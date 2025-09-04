# Liga MX Calendar

## Overview

Liga MX Calendar is a web application that displays the complete Liga MX football (soccer) tournament schedule for the 2024 season. The application provides an interactive calendar interface where users can view match schedules, filter by specific game weeks (jornadas), and search for specific teams. The project serves as a comprehensive digital calendar for Mexico's premier football league, presenting match information including dates, times, venues, and team matchups in an organized, user-friendly format.

## Recent Changes

### September 4, 2025
- Successfully set up the web application from the imported GitHub repository
- Created complete Node.js/Express backend infrastructure with server.js
- Implemented modern frontend with HTML, CSS, and JavaScript
- Configured proper Replit hosting on port 5000 with 0.0.0.0 binding
- Set up deployment configuration for autoscale production deployment
- Application is now fully functional and displaying Liga MX calendar data

## User Preferences

Preferred communication style: Simple, everyday language.

## System Architecture

### Backend Architecture
The application uses a minimal Node.js backend built with Express.js that serves static files and provides a REST API. The server architecture follows a simple file-based approach where match data is stored in JSON format and served through a single API endpoint. The backend runs on port 5000 and is configured to bind to all network interfaces (0.0.0.0) for compatibility with cloud hosting platforms like Replit.

### Frontend Architecture
The frontend is built with vanilla HTML, CSS, and JavaScript without any frameworks. It implements a class-based JavaScript architecture with a single `LigaMXCalendar` class that handles all functionality including data fetching, filtering, and DOM manipulation. The interface uses CSS Grid and Flexbox for responsive layout design with a modern gradient background and card-based match display.

### Data Management
Match data is stored in static JSON files (`ligamx-calendar.json`) that contain structured tournament information organized by "jornadas" (game weeks). Each jornada contains multiple matches with details like home/away teams, dates, times, and stadium information. The application loads this data asynchronously via a fetch API call to `/api/calendar`.

### User Interface Design
The application features a responsive design with:
- Header section with title and season information
- Filter controls (jornada selector and team search)
- Dynamic calendar grid that displays filtered match results
- Loading states and error handling for improved user experience
- Mobile-friendly responsive layout

### File Structure
The project follows a standard web application structure:
- `server.js` - Main Express server
- `public/` - Static web assets (HTML, CSS, JavaScript)
- `ligamx-calendar.json` - Primary match data source
- Various Android APK-related files (likely from decompiled mobile app)

## External Dependencies

### Runtime Dependencies
- **Express.js (v5.1.0)** - Web framework for serving the application and API endpoints
- **Node.js (>=18.0.0)** - JavaScript runtime environment

### Data Sources
- **Static JSON Files** - Liga MX match data stored locally in structured JSON format
- **File System API** - Node.js fs module for reading calendar data files

### Development Tools
- **npm** - Package manager for dependency management
- **Standard web technologies** - HTML5, CSS3, vanilla JavaScript for frontend

The application has minimal external dependencies by design, making it lightweight and easy to deploy. All match data is self-contained within the project, eliminating the need for external APIs or databases.