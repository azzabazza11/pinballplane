#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
PORT="${1:-8080}"
python3 -m http.server "$PORT" &
PID=$!
trap 'kill $PID 2>/dev/null || true' EXIT
sleep 0.4
URL="http://localhost:${PORT}/"
if command -v xdg-open >/dev/null; then xdg-open "$URL"
elif command -v open >/dev/null; then open "$URL"
else echo "$URL"
fi
wait $PID
