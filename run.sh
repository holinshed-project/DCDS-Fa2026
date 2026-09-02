#!/bin/sh
# Launches the name-extraction GUI.
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname "$0")" && pwd)"

if [ -x "$SCRIPT_DIR/.venv/bin/python3" ]; then
  exec "$SCRIPT_DIR/.venv/bin/python3" "$SCRIPT_DIR/name_extraction/gui_launcher/extract_names_gui.py"
fi

exec "$SCRIPT_DIR/name_extraction/gui_launcher/run_extract_names_gui.sh"
