# Liga MX Calendar Web Application

## Overview
A web application that displays the Liga MX 2024 calendar with interactive filtering capabilities. The application shows all matches organized by jornadas (match days) with team names, dates, times, and stadiums.

## Project Setup (Completed)
- **Frontend**: Single-page HTML application with embedded CSS and JavaScript
- **Backend**: Express.js server serving static files and API endpoints
- **Data**: Liga MX calendar data stored in JSON format
- **Port**: Application runs on port 5000
- **Deployment**: Configured for autoscale deployment

## Architecture
- `server.js` - Express server with static file serving and API endpoints
- `public/index.html` - Frontend application with calendar display and filtering
- `ligamx-calendar.json` - Complete Liga MX 2024 calendar data
- `package.json` - Node.js dependencies and scripts

## Features
- Display all Liga MX matches by jornada
- Filter matches by specific jornada
- Search matches by team name
- Responsive design for mobile and desktop
- Real-time filtering and search

## Recent Changes
- Created Express server to serve static files and calendar API (September 2025)
- Fixed frontend data field mappings to match JSON structure
- Configured workflow and deployment for Replit environment
- Verified application functionality with working calendar display