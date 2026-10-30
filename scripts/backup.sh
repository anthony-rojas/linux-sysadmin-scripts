#!/usr/bin/env bash
set -euo pipefail

SOURCE=${1:?Uso: $0 <carpeta_origen> [carpeta_destino]}
DEST=${2:-$HOME/backups}
DAYS=7

mkdir -p "$DEST"
FECHA=$(date +%Y-%m-%d_%H%M%S)
ARCHIVO="$DEST/backup_$(basename "$SOURCE")_$FECHA.tar.gz"

tar -czf "$ARCHIVO" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"
echo "Backup creado: $ARCHIVO"

find "$DEST" -name 'backup_*.tar.gz' -mtime +"$DAYS" -delete
echo "Backups de más de $DAYS días eliminados"
