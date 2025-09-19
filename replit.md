# Liga MX Calendar

## Overview

This is a Liga MX (Mexican football league) calendar web application that displays soccer match schedules in a visual format. The project consists of a Node.js/Express backend serving static files and API endpoints, with a frontend that presents Liga MX match data in an interactive calendar interface. The application includes both web and Android mobile components, with Firebase integration for mobile features.

## User Preferences

Preferred communication style: Simple, everyday language.

## System Architecture

### Frontend Architecture
- **Static Web Application**: Built with vanilla HTML, CSS, and JavaScript served from the `public` directory
- **Responsive Design**: Uses CSS Grid and Flexbox for mobile-friendly layouts with gradient backgrounds and modern styling
- **Interactive Calendar**: Displays Liga MX match schedules with filtering capabilities and team-based color coding

### Backend Architecture
- **Express.js Server**: Lightweight Node.js server handling static file serving and API endpoints
- **RESTful API**: Single endpoint `/api/calendar` that serves JSON match data
- **File-based Data Storage**: Match schedules stored in JSON format for easy updates and maintenance
- **Static Asset Serving**: Configured to serve frontend files from the `public` directory

### Data Structure
- **Match Data Format**: Structured JSON containing "jornadas" (match days) with detailed match information including teams, dates, times, and venues
- **Team Information**: Local and visiting team names with stadium details and scheduling information
- **Calendar Organization**: Data organized by match day numbers with flexible date formatting

### Mobile Integration
- **Android APK Components**: Includes decompiled Android application files with Liga MX branding
- **Firebase Integration**: Configured for push notifications, analytics, and app services through `google-services.json`
- **Hybrid Architecture**: Web content can be embedded within mobile WebView components

## External Dependencies

### Core Runtime
- **Node.js**: Version 18+ required for server execution
- **Express.js**: Version 5.1.0 for web server framework

### Mobile Services
- **Firebase**: Project ID `ligamx-daf3d` for mobile app backend services including:
  - Firebase Storage for asset management
  - App analytics and measurement
  - Push notification capabilities
- **Google Play Services**: Multiple services integrated including ads, app identification, and measurement APIs

### Development Tools
- **APKTool**: Version 2.4.0 for Android application analysis and modification
- **Android Support Libraries**: Multiple AndroidX libraries for UI components, lifecycle management, and compatibility

### Data Sources
- **Liga MX Official Schedule**: Match data appears to be manually curated and stored in JSON format
- **Static Assets**: Team logos, styling assets, and calendar visualization components stored locally