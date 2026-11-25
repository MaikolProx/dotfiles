# Hyprland (Arch Linux): notas y fixes

Lo que aprendí montando Arch + Hyprland en una VM (septiembre 2026).

## Hyprland 0.56: `exec_cmd` ya no lleva `exec,`
```lua
-- Antes (no funciona en 0.56):
hl.bind("SUPER", "RETURN", hl.exec_cmd("exec, foot"))
hl.bind("SUPER", "f", hl.exec_cmd("exec, fullscreen, 1"))

-- Ahora:
hl.bind("SUPER", "RETURN", hl.exec_cmd("foot"))
hl.bind("SUPER", "f", hl.exec_cmd("fullscreen 1"))
```

## Atajos que usaba
| Atajo | Acción |
|---|---|
| `SUPER+Enter` | Terminal (foot) |
| `SUPER+D` | Lanzador (`wofi --show drun`) |
| `SUPER+1..9` | Cambiar de escritorio |
| `SUPER+Tab` | Ventana flotante sí/no |
| `SUPER+F` | Pantalla completa |

## cmatrix de fondo sin reiniciarse
`cmatrix -C white -u 10 -b` dentro de un terminal flotante; si el terminal cambia de tamaño, no hace falta relanzarlo (el proceso sigue igual).
