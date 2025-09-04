class LigaMXCalendar {
    constructor() {
        this.calendarData = null;
        this.filteredData = null;
        this.streamingLinks = new Map(); // Cache streaming links
        this.init();
    }

    async init() {
        await this.loadCalendarData();
        this.setupEventListeners();
        this.setupModalHandlers();
        await this.loadStreamingLinks();
        this.renderCalendar();
    }

    async loadCalendarData() {
        try {
            const response = await fetch('/api/calendar');
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            this.calendarData = await response.json();
            this.filteredData = this.calendarData;
            console.log('Calendar data loaded:', this.calendarData);
            this.populateJornadaFilter();
            this.populateMatchSelect();
            this.hideLoading();
        } catch (error) {
            console.error('Error loading calendar data:', error);
            this.showError('Error cargando el calendario. Por favor, intenta de nuevo.');
            this.hideLoading();
        }
    }

    populateJornadaFilter() {
        const select = document.getElementById('jornadaFilter');
        if (this.calendarData && this.calendarData.jornadas) {
            this.calendarData.jornadas.forEach(jornada => {
                const option = document.createElement('option');
                option.value = jornada.numero;
                option.textContent = `Jornada ${jornada.numero}`;
                select.appendChild(option);
            });
        }
    }

    populateMatchSelect() {
        const select = document.getElementById('matchSelect');
        if (this.calendarData && this.calendarData.jornadas) {
            this.calendarData.jornadas.forEach(jornada => {
                jornada.partidos.forEach((partido, index) => {
                    const option = document.createElement('option');
                    const matchId = `j${jornada.numero}_m${index}`;
                    option.value = matchId;
                    option.textContent = `J${jornada.numero}: ${partido.local} vs ${partido.visitante}`;
                    select.appendChild(option);
                });
            });
        }
    }

    setupEventListeners() {
        const jornadaFilter = document.getElementById('jornadaFilter');
        const teamSearch = document.getElementById('teamSearch');
        const addStreamBtn = document.getElementById('addStreamBtn');

        jornadaFilter.addEventListener('change', () => this.filterData());
        teamSearch.addEventListener('input', () => this.filterData());
        addStreamBtn.addEventListener('click', () => this.openModal());
    }

    setupModalHandlers() {
        const modal = document.getElementById('streamModal');
        const closeBtn = document.querySelector('.close');
        const streamForm = document.getElementById('streamForm');

        closeBtn.addEventListener('click', () => this.closeModal());
        window.addEventListener('click', (event) => {
            if (event.target === modal) {
                this.closeModal();
            }
        });

        streamForm.addEventListener('submit', (e) => this.handleStreamSubmission(e));
    }

    openModal() {
        const modal = document.getElementById('streamModal');
        modal.style.display = 'block';
    }

    closeModal() {
        const modal = document.getElementById('streamModal');
        modal.style.display = 'none';
        document.getElementById('streamForm').reset();
    }

    async handleStreamSubmission(e) {
        e.preventDefault();
        
        const matchId = document.getElementById('matchSelect').value;
        const streamUrl = document.getElementById('streamUrl').value;
        const platform = document.getElementById('platform').value;
        const streamerName = document.getElementById('streamerName').value;

        if (!matchId || !streamUrl || !platform || !streamerName) {
            alert('Por favor completa todos los campos');
            return;
        }

        if (!this.isValidUrl(streamUrl)) {
            alert('Por favor ingresa una URL válida');
            return;
        }

        try {
            // Add to Firebase
            await this.addStreamingLink({
                matchId,
                streamUrl,
                platform,
                streamerName,
                timestamp: new Date()
            });

            this.closeModal();
            await this.loadStreamingLinks();
            this.renderCalendar();
            
            // Show success message
            this.showSuccess('Transmisión agregada exitosamente!');
        } catch (error) {
            console.error('Error adding streaming link:', error);
            alert('Error al agregar la transmisión. Por favor intenta de nuevo.');
        }
    }

    async addStreamingLink(streamData) {
        if (!window.firebase) {
            throw new Error('Firebase not initialized');
        }

        const { db, collection, addDoc } = window.firebase;
        
        try {
            const docRef = await addDoc(collection(db, 'streaming_links'), streamData);
            console.log('Streaming link added with ID: ', docRef.id);
            return docRef.id;
        } catch (error) {
            console.error('Error adding streaming link: ', error);
            throw error;
        }
    }

    async loadStreamingLinks() {
        if (!window.firebase) {
            console.warn('Firebase not initialized, skipping streaming links');
            return;
        }

        const { db, collection, getDocs } = window.firebase;
        
        try {
            const querySnapshot = await getDocs(collection(db, 'streaming_links'));
            this.streamingLinks.clear();
            
            querySnapshot.forEach((doc) => {
                const data = doc.data();
                if (!this.streamingLinks.has(data.matchId)) {
                    this.streamingLinks.set(data.matchId, []);
                }
                this.streamingLinks.get(data.matchId).push({
                    id: doc.id,
                    ...data
                });
            });
            
            console.log('Streaming links loaded:', this.streamingLinks);
        } catch (error) {
            console.error('Error loading streaming links:', error);
        }
    }

    isValidUrl(string) {
        try {
            new URL(string);
            return true;
        } catch (_) {
            return false;
        }
    }

    detectPlatform(url) {
        const platforms = {
            'youtube.com': 'youtube',
            'youtu.be': 'youtube',
            'facebook.com': 'facebook',
            'fb.watch': 'facebook',
            'instagram.com': 'instagram',
            'twitch.tv': 'twitch',
            'tiktok.com': 'tiktok'
        };

        for (const [domain, platform] of Object.entries(platforms)) {
            if (url.includes(domain)) {
                return platform;
            }
        }
        return 'other';
    }

    filterData() {
        if (!this.calendarData || !this.calendarData.jornadas) return;

        const jornadaFilter = document.getElementById('jornadaFilter').value;
        const teamSearch = document.getElementById('teamSearch').value.toLowerCase();

        let filteredJornadas = this.calendarData.jornadas;

        // Filter by jornada
        if (jornadaFilter) {
            filteredJornadas = filteredJornadas.filter(jornada => 
                jornada.numero.toString() === jornadaFilter
            );
        }

        // Filter by team
        if (teamSearch) {
            filteredJornadas = filteredJornadas.map(jornada => ({
                ...jornada,
                partidos: jornada.partidos.filter(partido =>
                    partido.local.toLowerCase().includes(teamSearch) ||
                    partido.visitante.toLowerCase().includes(teamSearch)
                )
            })).filter(jornada => jornada.partidos.length > 0);
        }

        this.filteredData = { jornadas: filteredJornadas };
        this.renderCalendar();
    }

    renderCalendar() {
        const calendarContainer = document.getElementById('calendar');
        
        if (!this.filteredData || !this.filteredData.jornadas) {
            calendarContainer.innerHTML = '<p>No hay datos disponibles</p>';
            return;
        }

        calendarContainer.innerHTML = '';

        this.filteredData.jornadas.forEach(jornada => {
            const jornadaElement = this.createJornadaElement(jornada);
            calendarContainer.appendChild(jornadaElement);
        });
    }

    createJornadaElement(jornada) {
        const jornadaDiv = document.createElement('div');
        jornadaDiv.className = 'jornada';

        const header = document.createElement('div');
        header.className = 'jornada-header';
        
        const title = document.createElement('h2');
        title.textContent = `Jornada ${jornada.numero}`;
        
        const fechas = document.createElement('div');
        fechas.className = 'fechas';
        fechas.textContent = jornada.fechas;
        
        if (jornada.tipo) {
            const tipo = document.createElement('div');
            tipo.textContent = `(${jornada.tipo})`;
            tipo.style.fontWeight = 'bold';
            tipo.style.marginTop = '5px';
            header.appendChild(title);
            header.appendChild(fechas);
            header.appendChild(tipo);
        } else {
            header.appendChild(title);
            header.appendChild(fechas);
        }

        const partidosDiv = document.createElement('div');
        partidosDiv.className = 'partidos';

        jornada.partidos.forEach((partido, index) => {
            const matchId = `j${jornada.numero}_m${index}`;
            const partidoElement = this.createPartidoElement(partido, matchId);
            partidosDiv.appendChild(partidoElement);
        });

        jornadaDiv.appendChild(header);
        jornadaDiv.appendChild(partidosDiv);

        return jornadaDiv;
    }

    createPartidoElement(partido, matchId) {
        const partidoDiv = document.createElement('div');
        partidoDiv.className = 'partido';
        partidoDiv.setAttribute('data-team', `${partido.local} ${partido.visitante}`);

        const equipos = document.createElement('div');
        equipos.className = 'equipos';
        equipos.innerHTML = `
            <span>${partido.local}</span>
            <span class="vs">VS</span>
            <span>${partido.visitante}</span>
        `;

        const info = document.createElement('div');
        info.className = 'info';
        info.innerHTML = `
            <div class="dia">${partido.dia}</div>
            <div class="hora">${partido.hora}</div>
        `;

        const estadio = document.createElement('div');
        estadio.className = 'estadio';
        estadio.textContent = partido.estadio;

        partidoDiv.appendChild(equipos);
        partidoDiv.appendChild(info);
        partidoDiv.appendChild(estadio);

        // Add streaming links if available
        if (this.streamingLinks.has(matchId)) {
            const streamingDiv = this.createStreamingLinksElement(this.streamingLinks.get(matchId));
            partidoDiv.appendChild(streamingDiv);
        }

        return partidoDiv;
    }

    createStreamingLinksElement(links) {
        const streamingDiv = document.createElement('div');
        streamingDiv.className = 'streaming-links';
        
        const title = document.createElement('h4');
        title.textContent = '📺 Transmisiones Disponibles';
        streamingDiv.appendChild(title);

        links.forEach(link => {
            const streamLink = document.createElement('a');
            streamLink.className = 'stream-link';
            streamLink.href = link.streamUrl;
            streamLink.target = '_blank';
            streamLink.rel = 'noopener noreferrer';

            const platformIcon = document.createElement('div');
            platformIcon.className = `platform-icon ${link.platform}`;

            const streamerName = document.createElement('span');
            streamerName.className = 'streamer-name';
            streamerName.textContent = link.streamerName;

            const platformBadge = document.createElement('span');
            platformBadge.className = 'platform-badge';
            platformBadge.textContent = this.getPlatformDisplayName(link.platform);

            streamLink.appendChild(platformIcon);
            streamLink.appendChild(streamerName);
            streamLink.appendChild(platformBadge);

            streamingDiv.appendChild(streamLink);
        });

        return streamingDiv;
    }

    getPlatformDisplayName(platform) {
        const names = {
            'youtube': 'YouTube',
            'facebook': 'Facebook',
            'instagram': 'Instagram',
            'twitch': 'Twitch',
            'tiktok': 'TikTok',
            'other': 'Otro'
        };
        return names[platform] || 'Otro';
    }

    showError(message) {
        const errorDiv = document.getElementById('error');
        errorDiv.textContent = message;
        errorDiv.style.display = 'block';
    }

    showSuccess(message) {
        // Create a temporary success message
        const successDiv = document.createElement('div');
        successDiv.className = 'success';
        successDiv.textContent = message;
        successDiv.style.cssText = `
            background: #28a745;
            color: white;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 20px;
            text-align: center;
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 1001;
            animation: slideIn 0.3s ease;
        `;
        
        document.body.appendChild(successDiv);
        
        setTimeout(() => {
            successDiv.remove();
        }, 3000);
    }

    hideLoading() {
        const loadingDiv = document.getElementById('loading');
        loadingDiv.style.display = 'none';
    }
}

// Initialize the app when the DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
    new LigaMXCalendar();
});