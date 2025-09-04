const http = require('http');
const fs = require('fs');
const path = require('path');
const url = require('url');

const PORT = 5000;

// MIME types for different file extensions
const mimeTypes = {
    '.html': 'text/html',
    '.js': 'text/javascript',
    '.css': 'text/css',
    '.json': 'application/json',
    '.png': 'image/png',
    '.jpg': 'image/jpeg',
    '.gif': 'image/gif',
    '.ico': 'image/x-icon'
};

// Load Liga MX calendar data
let calendarData = {};
try {
    const data = fs.readFileSync('ligamx-calendar.json', 'utf8');
    calendarData = JSON.parse(data);
    console.log('✅ Liga MX calendar data loaded successfully');
} catch (error) {
    console.error('❌ Error loading calendar data:', error.message);
}

const server = http.createServer((req, res) => {
    // Disable caching for development
    res.setHeader('Cache-Control', 'no-cache, no-store, must-revalidate');
    res.setHeader('Pragma', 'no-cache');
    res.setHeader('Expires', '0');
    
    // Enable CORS
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');

    const parsedUrl = url.parse(req.url, true);
    const pathname = parsedUrl.pathname;

    // API Routes
    if (pathname === '/api/calendar') {
        res.writeHead(200, { 'Content-Type': 'application/json; charset=utf-8' });
        res.end(JSON.stringify(calendarData, null, 2));
        return;
    }

    if (pathname === '/api/jornada') {
        const jornadaNum = parseInt(parsedUrl.query.num);
        if (jornadaNum && calendarData.jornadas) {
            const jornada = calendarData.jornadas.find(j => j.numero === jornadaNum);
            if (jornada) {
                res.writeHead(200, { 'Content-Type': 'application/json; charset=utf-8' });
                res.end(JSON.stringify(jornada, null, 2));
                return;
            }
        }
        res.writeHead(404, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify({ error: 'Jornada not found' }));
        return;
    }

    // Static file serving
    let filePath = '.' + pathname;
    if (filePath === './') {
        filePath = './index.html';
    }

    const extname = String(path.extname(filePath)).toLowerCase();
    const contentType = mimeTypes[extname] || 'application/octet-stream';

    fs.readFile(filePath, (error, content) => {
        if (error) {
            if (error.code === 'ENOENT') {
                res.writeHead(404, { 'Content-Type': 'text/html' });
                res.end('<h1>404 - Page Not Found</h1>', 'utf-8');
            } else {
                res.writeHead(500);
                res.end('Server Error: ' + error.code);
            }
        } else {
            res.writeHead(200, { 'Content-Type': contentType + '; charset=utf-8' });
            res.end(content, 'utf-8');
        }
    });
});

server.listen(PORT, '0.0.0.0', () => {
    console.log('🚀 Liga MX Calendar Server running on:');
    console.log(`   ➤ Local:   http://localhost:${PORT}`);
    console.log(`   ➤ Network: http://0.0.0.0:${PORT}`);
    console.log('');
    console.log('📊 Features available:');
    console.log('   ✅ Liga MX Calendar API');
    console.log('   ✅ Color Visualizer');
    console.log('   ✅ Interactive Navigation');
    console.log('   ✅ Responsive Design');
});