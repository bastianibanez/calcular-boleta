#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://raw.githubusercontent.com/bastianibanez/calcular-boleta/main/calcular-boleta"
TARGET="$HOME/.local/bin/calcular-boleta"

echo "📦 Instalando calcular-boleta..."

mkdir -p "$HOME/.local/bin"
curl -fsSL "$REPO_URL" -o "$TARGET"
chmod +x "$TARGET"

# Ensure ~/.local/bin is in PATH
SHELL_PROFILE="$HOME/.zprofile"
ADDED_PATH_LINE=false

if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' "$SHELL_PROFILE" 2>/dev/null; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >>"$SHELL_PROFILE"
  ADDED_PATH_LINE=true
fi

# Apply PATH changes immediately
if $ADDED_PATH_LINE; then
  source "$SHELL_PROFILE"
fi

echo "✅ Instalación completa."
echo ""
echo "Ejemplo de uso:"
echo "   calcular-boleta 500000 -r 0.145"
echo ""
