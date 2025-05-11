echo "Installing Python......"
pkg install python -y > /dev/null 2>&1
echo "Installing php......"
pkg install php -y > /dev/null 2>&1
echo "Installing Cloudflared......"
pkg install cloudflared -y > /dev/null 2>&1
pip install termcolor > /dev/null 2>&1
echo "Installing termux api......."
pkg install termux-api -y > /dev/null 2>&1

echo "Please Install Termux API manually from F-Droid (Google)\nIf already Downloaded Ignore this message"

sleep 3

mkdir Data_log

mv /data/data/com.termux/files/home/HCO-Location-Finder/weather.php Data_log

mv /data/data/com.termux/files/home/HCO-Location-Finder/index.html Data_log

mv /data/data/com.termux/files/home/HCO-Location-Finder/setup.sh Data_log

mv /data/data/com.termux/files/home/HCO-Location-Finder/main.py Data_log

bash run.sh