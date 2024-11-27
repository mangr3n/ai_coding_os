#!/bin/sh

# Default installation directory
DEFAULT_INSTALL_DIR="$HOME/ai_coding_os"

echo "🤖 Welcome to AI Coding OS Installer!"
echo ""

# Ask for installation directory
if [ -z "$1" ]; then
    echo "Where would you like to install AI Coding OS?"
    echo "Default location: $DEFAULT_INSTALL_DIR"
    printf "Press Enter to use default, or type a custom path: "
    read -r custom_path
    INSTALL_DIR="${custom_path:-$DEFAULT_INSTALL_DIR}"
else
    INSTALL_DIR="$1"
fi

echo "📍 Installing to: $INSTALL_DIR"
echo ""

# Check if git is installed
if ! command -v git >/dev/null 2>&1; then
    echo "❌ Error: git is required but not installed."
    echo "Please install git first:"
    echo "→ https://git-scm.com/book/en/v2/Getting-Started-Installing-Git"
    exit 1
fi

# Create installation directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Clone the repository
echo "📦 Cloning AI Coding OS..."
git clone https://github.com/mangr3n/ai_coding_os.git "$INSTALL_DIR" 2>/dev/null || {
    echo "♻️  Repository already exists, pulling latest changes..."
    cd "$INSTALL_DIR"
    git pull origin main
}

# Make ai_os executable
chmod +x "$INSTALL_DIR/bin/ai_os"

# Initialize the system
echo "🚀 Initializing AI Coding OS..."
"$INSTALL_DIR/bin/ai_os" init

echo "✨ Installation complete!"
echo ""
echo "To get started:"
echo "1. Add the following to your shell's rc file (.bashrc, .zshrc, etc.):"
echo "   export PATH=\"\$PATH:$INSTALL_DIR/bin\""
echo ""
echo "2. Restart your shell or run:"
echo "   source ~/.bashrc  # or your shell's rc file"
echo ""
echo "3. You can now use ai_os commands from anywhere!"
echo "   Try: ai_os --help"
