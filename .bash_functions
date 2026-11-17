# Agnostic temporary hardware unlock for Web Serial (ESP32) and WebHID (VIA)
unlock-tty() {
    echo "🔓 Granting temporary Web Serial and WebHID access..."
    sudo chmod 666 /dev/ttyUSB* /dev/ttyACM* /dev/hidraw* 2>/dev/null
    echo "Access granted! (Resets automatically on unplug or reboot)"
}
