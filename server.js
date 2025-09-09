const express = require('express');
const fs = require('fs');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 5000;

// Serve static files from public directory
app.use(express.static('public'));

// API endpoint to serve calendar data
app.get('/api/calendar', (req, res) => {
    try {
        const calendarData = JSON.parse(fs.readFileSync('ligamx-calendar.json', 'utf8'));
        res.json(calendarData);
    } catch (error) {
        console.error('Error reading calendar data:', error);
        res.status(500).json({ error: 'Error loading calendar data' });
    }
});

// Serve index.html for the root route
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Start server
app.listen(PORT, '0.0.0.0', () => {
    console.log(`Liga MX Calendar server running on http://0.0.0.0:${PORT}`);
});