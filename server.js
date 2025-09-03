const http = require('http');
const fs = require('fs');
const path = require('path');

const PORT = 5000;

const server = http.createServer((req, res) => {
    // Configurar CORS y headers de cache
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
    res.setHeader('Cache-Control', 'no-cache, no-store, must-revalidate');
    res.setHeader('Pragma', 'no-cache');
    res.setHeader('Expires', '0');

    // Manejar rutas
    if (req.url === '/' || req.url === '/index.html') {
        fs.readFile('./index.html', 'utf8', (err, data) => {
            if (err) {
                res.writeHead(500, { 'Content-Type': 'text/plain' });
                res.end('Error interno del servidor');
                return;
            }
            res.writeHead(200, { 'Content-Type': 'text/html; charset=utf-8' });
            res.end(data);
        });
    } else if (req.url === '/colors.xml') {
        fs.readFile('./res/values/colors.xml', 'utf8', (err, data) => {
            if (err) {
                res.writeHead(404, { 'Content-Type': 'text/plain' });
                res.end('Archivo no encontrado');
                return;
            }
            res.writeHead(200, { 'Content-Type': 'application/xml; charset=utf-8' });
            res.end(data);
        });
    } else if (req.url === '/calendar') {
        fs.readFile('./ligamx-calendar.json', 'utf8', (err, data) => {
            if (err) {
                res.writeHead(404, { 'Content-Type': 'text/plain' });
                res.end('Calendario no encontrado');
                return;
            }
            res.writeHead(200, { 'Content-Type': 'application/json; charset=utf-8' });
            res.end(data);
        });
    } else {
        res.writeHead(404, { 'Content-Type': 'text/plain' });
        res.end('Página no encontrada');
    }
});

server.listen(PORT, '0.0.0.0', () => {
    console.log(`🎨 Servidor de visualización de colores iniciado en puerto ${PORT}`);
    console.log(`📱 Mostrando la paleta de colores actualizada: Negro, Blanco y Naranja`);
    console.log(`✅ Archivo colors.xml editado exitosamente`);
    console.log(`⚽ Calendario Liga MX integrado profesionalmente`);
    console.log(`🌐 Accede a la aplicación en: http://localhost:${PORT}`);
});

// Manejo de errores
server.on('error', (err) => {
    console.error('❌ Error en el servidor:', err.message);
});

process.on('uncaughtException', (err) => {
    console.error('❌ Error no capturado:', err.message);
});

process.on('unhandledRejection', (reason, promise) => {
    console.error('❌ Promesa rechazada no manejada:', reason);
});