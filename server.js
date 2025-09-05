const express = require('express');
const path = require('path');
const fs = require('fs');

const app = express();
const PORT = process.env.PORT || 5000;

// Serve static files from public directory
app.use(express.static('public'));

// API endpoint for calendar data
app.get('/api/calendar', (req, res) => {
    try {
        const calendarData = JSON.parse(fs.readFileSync('ligamx-calendar.json', 'utf8'));
        res.json(calendarData);
    } catch (error) {
        console.error('Error reading calendar data:', error);
        res.status(500).json({ error: 'Failed to load calendar data' });
    }
});

// Serve main page
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Bind to all interfaces for cloud hosting compatibility
app.listen(PORT, '0.0.0.0', () => {
    console.log(`Liga MX Calendar server running on port ${PORT}`);
    console.log(`Server accessible at http://0.0.0.0:${PORT}`);
});