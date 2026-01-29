cd "$(dirname "$0")"
clear

echo "🚀 Setting up AutoTyper for macOS..."
echo ""

if ! command -v python3 >/dev/null 2>&1; then
    echo "❌ python3 not found."
    echo "Install from https://www.python.org/"
    read -p "Press Enter to exit..."
    exit 1
fi

if [ ! -d "venv" ]; then
    echo "📦 Creating virtual environment..."
    python3 -m venv venv || exit 1
fi

PYTHON="./venv/bin/python"
PIP="./venv/bin/pip"

echo "⬆️ Upgrading pip..."
"$PYTHON" -m pip install --upgrade pip || exit 1

echo "📥 Installing dependencies..."
"$PIP" install -r requirements.txt || exit 1

echo ""
echo "✅ Setup complete!"
echo ""
echo "⚠️ macOS permissions required:"
echo "System Settings → Privacy & Security → Accessibility"
echo "Enable: Terminal / VS Code / iTerm"
echo ""
echo "▶️ To run:"
echo "   ./venv/bin/python main.py"
echo ""
read -p "Press Enter to close..."
