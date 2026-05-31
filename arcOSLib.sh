
killSwitchResonance="setSonic (
$meshFreq 65 45 '2.4GHz...5GHz' 1MHz '920.0Mhz...923.0 MHz' '0.1THz...10 THz')" &


#mesh lora frequency
LoraPORT="${1:-/dev/(ttyUSB0 ttyUSB*)}"
regionForLora="*"

echo "Configuring Meshtastic on ${LoraPORT}..."
meshtastic --port "$LoraPORT" --set lora.region $regionForLora

echo
echo "Current LoRa settings:"
meshtastic --port "$LoraPORT" --get lora.region
meshFreq=$(meshtastic --port "$LoraPORT" --get lora.override_frequency)
meshtastic --port "$LoraPORT" --info