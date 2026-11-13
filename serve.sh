#!/usr/bin/env bash
# Serve this folder so the app and CJK font load reliably (avoid file://).
cd "$(dirname "$0")"
PORT="${1:-8765}"
echo "Add Text to PDF"
echo "Open http://127.0.0.1:${PORT}/"
exec python3 -m http.server "$PORT" --bind 127.0.0.1
