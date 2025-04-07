#!/bin/bash

## usar ./wrk-docker.sh http://site.com.br "Mozilla/5.0 (Macintosh; Intel Mac OS X 13_4)"

if [ -z "$1" ]; then
  echo "❌ Uso: $0 http://site.com \"User-Agent\""
  exit 1
fi

SITE="$1"
USER_AGENT="${2:-Mozilla/5.0}"  # Default se não for passado

docker run --rm \
  --platform linux/arm64/v8 \
  alpine sh -c "
    apk add --no-cache wrk curl > /dev/null && \
    echo '🚀 Testando $SITE com User-Agent: $USER_AGENT' && \
    echo 'wrk não suporta header diretamente pela CLI, então usando curl como fallback para ver se atinge.' && \
    for i in \$(seq 1 100); do curl -s -A \"$USER_AGENT\" \"$SITE\" > /dev/null & done; wait && echo '✅ Concluído'
  "