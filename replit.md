# Proyecto Android Colors & Liga MX Calendar

## Descripción
Aplicación web de demostración que incluye:
- ✅ **Paleta de colores actualizada** para Android (colors.xml editado)  
- ⚽ **Calendario profesional Liga MX** con todas las jornadas oficiales
- 🎨 **Esquema de colores**: Negro, Blanco y Naranja

## Características Implementadas

### 🎨 Sistema de Colores
- Archivo `colors.xml` editado profesionalmente
- Esquema de colores consistente: Negro (#000000), Blanco (#ffffff), Naranja (#ff8c00)
- Compatibilidad garantizada con compilación Android

### ⚽ Calendario Liga MX
- **Datos oficiales**: Todas las jornadas con fechas, horarios y estadios
- **Navegación interactiva**: Botones y teclas de flecha
- **Diseño responsivo**: Adaptado para móviles y desktop
- **Animaciones fluidas**: Efectos profesionales de carga

### 🚀 Características Técnicas
- Servidor Node.js optimizado
- API REST para datos del calendario
- Interfaz moderna con CSS Grid y Flexbox
- Cache deshabilitado para desarrollo
- Soporte completo para caracteres UTF-8

## Estructura del Proyecto

```
/
├── index.html              # Interfaz principal
├── server.js              # Servidor Node.js
├── ligamx-calendar.json   # Datos oficiales Liga MX
├── res/values/colors.xml  # Colores Android actualizados
└── replit.md             # Documentación del proyecto
```

## Navegación del Calendario

### Controles Disponibles
- **Botones**: ⬅️ Anterior / ➡️ Siguiente
- **Teclado**: Flechas izquierda/derecha
- **Límites**: Jornada 1 hasta la última disponible

### Información Mostrada
- 📅 Fecha y día de cada partido
- 🕐 Horario detallado (incluye horario centro/local)
- 🏟️ Estadio donde se juega
- ⚡ Tipo especial de jornada (ej: DOBLE)

## Colores Actualizados en colors.xml

| Color | Valor Anterior | Valor Actual | Uso |
|-------|---------------|--------------|-----|
| colorPrimary | #ff006747 | #ffff8c00 | Color principal (Naranja) |
| colorPrimaryDark | #ffce1126 | #ff000000 | Color primario oscuro (Negro) |
| colorAccent | #ffce1126 | #ffff8c00 | Color de acento (Naranja) |
| colorBackgroundDark | #ff101d24 | #ff000000 | Fondo oscuro (Negro) |
| colorToolbarDark | #ff222d36 | #ff1a1a1a | Toolbar oscuro |

## Características Profesionales

### ✅ Compatibilidad
- ✅ Sin errores de compilación
- ✅ Estructura XML preservada
- ✅ Nombres de colores mantenidos
- ✅ Formato hexadecimal correcto

### 🎯 Experiencia de Usuario
- ✅ Carga rápida de datos
- ✅ Animaciones suaves
- ✅ Feedback visual inmediato
- ✅ Navegación intuitiva
- ✅ Diseño responsivo

### 🔧 Optimizaciones
- ✅ Cache deshabilitado para desarrollo
- ✅ Manejo de errores robusto
- ✅ Código limpio y mantenible
- ✅ Comentarios descriptivos

## Estado del Proyecto
🟢 **OPERATIVO EN REPLIT - BOTONES ARREGLADOS**

- [x] Colors.xml editado con esquema Negro/Blanco/Naranja
- [x] Calendario Liga MX integrado profesionalmente
- [x] Servidor funcionando en puerto 5000
- [x] Interfaz responsiva y moderna
- [x] Datos oficiales del torneo cargados (17 jornadas)
- [x] Navegación completa implementada y reparada
- [x] Botones del calendario funcionando correctamente
- [x] Validación XML correcta sin errores de compilación
- [x] Configurado para producción en Replit
- [x] Node.js 20 configurado correctamente

## Tecnologías Utilizadas
- **Backend**: Node.js con servidor HTTP nativo
- **Frontend**: HTML5, CSS3, JavaScript ES6+
- **Datos**: JSON con estructura oficial Liga MX
- **Estilos**: CSS Grid, Flexbox, animaciones CSS
- **Compatibilidad**: Diseño responsivo para todos los dispositivos

## Configuración Replit
- **Entorno**: Node.js 20 con npm 10.8.2
- **Puerto**: 5000 (configurado para proxy)
- **Workflow**: Color Visualizer ejecutándose automáticamente
- **Deployment**: Autoscale configurado para producción
- **Cache**: Deshabilitado para desarrollo

---
**Última actualización**: Septiembre 2025  
**Estado**: ✅ Operativo en Replit