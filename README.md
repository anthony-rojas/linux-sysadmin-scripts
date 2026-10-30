# linux-sysadmin-scripts

Script Bash para tareas de administracion de sistemas linux

## Scripts 

'scripts/check_disk.sh': Lanza una alerta cuando el uso del disco supera el 
umbral (80%) actualmente 99%

Uso: '.scripts/check_disk.sh [Umbral]'



'scripts/backup.sh': Crea un backup comprimido con fecha y borra los de mas
de 7 dias de uso.

Uso: '.scripts/backup.sh <Origen> [Destino]'



'scripts/create_users.sh': Crea usuarios desde un archivo CSV(Usuario,nombre),
incluye clave temporal con openssl y cambio obligatorio en el primer acceso.

Uso: 'sudo ./scripts/create_users.sh <archivo.csv>'



