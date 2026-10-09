#!/bin/sh
# Serve the Chamber Scoring Sheet to phones on the same network.
cd "$(dirname "$0")"
PORT="${1:-8000}"
IP="$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null)"
echo "On this Mac:   http://localhost:$PORT"
[ -n "$IP" ] && echo "On your phone: http://$IP:$PORT"
echo "Stop with Ctrl+C"
exec python3 -m http.server "$PORT" --bind 0.0.0.0
