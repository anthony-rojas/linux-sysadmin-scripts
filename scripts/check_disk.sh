#!/usr/bin/env bash

set -euo pipefail



THRESHOLD=${1:-80}



df -h --output=pcent,target | tail -n +2 | while read -r use mount; do

  pct=${use%\%}

  if [ "$pct" -ge "$THRESHOLD" ]; then

    echo "ALERTA: $mount está al ${pct}% (umbral ${THRESHOLD}%)"

  fi

done
