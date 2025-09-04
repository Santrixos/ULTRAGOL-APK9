class LigaMXCalendar {
    constructor() {
        this.calendarData = null;
        this.filteredData = null;
        this.init();
    }

    async init() {
        await this.loadCalendarData();
        this.setupEventListeners();
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

    setupEventListeners() {
        const jornadaFilter = document.getElementById('jornadaFilter');
        const teamSearch = document.getElementById('teamSearch');

        jornadaFilter.addEventListener('change', () => this.filterData());
        teamSearch.addEventListener('input', () => this.filterData());
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

        jornada.partidos.forEach(partido => {
            const partidoElement = this.createPartidoElement(partido);
            partidosDiv.appendChild(partidoElement);
        });

        jornadaDiv.appendChild(header);
        jornadaDiv.appendChild(partidosDiv);

        return jornadaDiv;
    }

    createPartidoElement(partido) {
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

        return partidoDiv;
    }

    showError(message) {
        const errorDiv = document.getElementById('error');
        errorDiv.textContent = message;
        errorDiv.style.display = 'block';
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