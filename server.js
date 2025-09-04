const express = require('express');
const path = require('path');
const fs = require('fs');

const app = express();
const PORT = 5000;

// Middleware
app.use(express.static('public'));
app.use(express.json());

// API route to get Liga MX calendar data
app.get('/api/calendar', (req, res) => {
    try {
        const calendarData = JSON.parse(fs.readFileSync('ligamx-calendar.json', 'utf8'));
        res.json(calendarData);
    } catch (error) {
        console.error('Error reading calendar data:', error);
        res.status(500).json({ error: 'Unable to load calendar data' });
    }
});

// Serve the main page
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Start server on all interfaces to work with Replit proxy
app.listen(PORT, '0.0.0.0', () => {
    console.log(`Liga MX Calendar server running on http://0.0.0.0:${PORT}`);
});