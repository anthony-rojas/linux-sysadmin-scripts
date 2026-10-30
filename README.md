
# linux-sysadmin-scripts



Colección de scripts Bash para tareas comunes de administración de sistemas Linux, creados mientras practico para un puesto de sysadmin junior / soporte cloud.



## Entorno

Ubuntu en WSL2 (Windows). Probado con bash 5.



## Scripts



| Script | Qué hace | Uso |

| --- | --- | --- |

| `scripts/check_disk.sh` | Alerta cuando el uso de un disco supera un umbral (80 % por defecto) | `./scripts/check_disk.sh [umbral]` |

| `scripts/backup.sh` | Crea un backup comprimido con fecha y borra los de más de 7 días | `./scripts/backup.sh <origen> [destino]` |

| `scripts/create_users.sh` | Crea usuarios desde un CSV, con clave temporal y cambio obligatorio | `sudo ./scripts/create_users.sh <archivo.csv>` |



## Automatización con cron

`check_disk.sh` se ejecuta cada hora y registra sus alertas en un log. Ejemplo en `docs/cron-ejemplo.txt`.



## Qué aprendí

- Navegación y permisos en Linux (`chmod`, `chown`).

- Pipes, variables y control de flujo en Bash.

- Programación de tareas con cron y redirección de salida a logs.

- Buenas prácticas: `set -euo pipefail`, validación de argumentos y no subir datos reales al repositorio.



## Problemas y soluciones

- Cron necesita rutas absolutas y no muestra salida en pantalla: se redirige a un log.

