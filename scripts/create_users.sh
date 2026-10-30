#!/usr/bin/env bash
set -euo pipefail

ARCHIVO=${1:?Uso: sudo $0 <archivo.csv>}

if [ "$EUID" -ne 0 ]; then
  echo "Este script debe ejecutarse con sudo" >&2
  exit 1
fi

while IFS=, read -r usuario nombre; do
  [ -z "$usuario" ] && continue
  if id "$usuario" &>/dev/null; then
    echo "OMITIDO: $usuario ya existe"
    continue
  fi
  useradd -m -s /bin/bash -c "$nombre" "$usuario"
  clave=$(openssl rand -base64 12)
  echo "$usuario:$clave" | chpasswd
  chage -d 0 "$usuario"
  echo "CREADO: $usuario ($nombre) - clave temporal: $clave"
done < "$ARCHIVO"
