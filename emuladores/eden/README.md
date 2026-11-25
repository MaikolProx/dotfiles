# Eden (emulador de Nintendo Switch)

`qt-config.ini` trae solo lo que importa: ajustes de video y sistema y controles (jugador 1 con mando, jugador 2 con teclado). Sin rutas personales ni datos de cuenta; Eden completa el resto con sus valores por defecto.

## Ajustes que importan
| Ajuste | Valor | Qué significa |
|---|---|---|
| `backend` | 1 | Vulkan |
| `resolution_setup` | 3 | Escala 1.5x (1080p en modo dock) |
| `use_vsync` | 2 | FIFO (sin tearing) |
| `gpu_accuracy` | 1 | Alta |
| `use_disk_shader_cache` | true | Guarda shaders: menos tirones la segunda vez |
| `use_asynchronous_shaders` | false | Desactivado (más estable) |
| `use_docked_mode` | 1 | Modo dock |
| `language_index` / `region_index` | 1 / 1 | Inglés (EE. UU.) / América |

## Controles
Jugador 1: mando por SDL (A/B/X/Y estándar; ZL/ZR en gatillos). Jugador 2: teclado:
A = C · B = X · X = V · Y = Z · L/R = Q/E · ZL/ZR = R/T · + / − = M/N · Stick izquierdo = W A S D · Cruceta = flechas.

## Cómo usarlo
Cierra Eden, copia `qt-config.ini` en `%APPDATA%\eden\config\` y vuelve a elegir tus carpetas de juegos en *Emulación → Configurar → Sistema de archivos*.

## Lo que NO está aquí (ni estará)
`prod.keys`, `title.keys`, firmware y juegos. Son material con derechos de Nintendo: compartirlos está prohibido y GitHub los borra por DMCA. Cada quien saca los suyos de **su propia consola**.
