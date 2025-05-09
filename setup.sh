echo "Installing Python......"
pkg install python -y > /dev/null 2>&1
echo "\nInstalling php......"
pkg install php -y > /dev/null 2>&1
echo "\nInstalling Cloudflared......"
pkg install cloudflared -y > /dev/null 2>&1
pip install termcolor > /dev/null 2>&1
echo "\nInstalling termux api......."
pkg install termux-api -y > /dev/null 2>&1

echo "Please Install Termux API manually from F-Droid (Google)\nIf already Downloaded Ignore this message"

sleep 4

python main.py