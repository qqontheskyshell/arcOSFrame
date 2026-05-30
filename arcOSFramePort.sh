arcOSframePort(){

echo "Apple-related USB devices:"
(system_profiler SPUSBDataType 2>/dev/null | awk '
BEGIN{IGNORECASE=1}
/^[[:space:]]{4}[^:]+:$/ {dev=$0}
/Manufacturer: Apple|Product ID:|Vendor ID:/ {
    if (dev != "") print dev "\n" $0
} ' | sed '/^$/d')



echo "Apple Product IDs:"
system_profiler SPUSBDataType 2>/dev/null | awk '
BEGIN { IGNORECASE=1 }

/^[[:space:]]{4}[^:]+:$/ { dev=$0 }  # device header lines (4 spaces + text:)
# Capture the manufacturer when present
/Manufacturer: Apple/ { isApple=1 }
/Manufacturer:/ && !/Apple/ { isApple=0 }

# When we see a Product ID inside an Apple device block, print it
/Apple Product ID:/ {
  if (isApple) {
    #apple product
    print $0
  }
}

/Non Apple Product ID:/ {
  if (isNotApple) {
    #non apple product
    print $0
  }
}
'

usbProductID=$(
  system_profiler SPUSBDataType 2>/dev/null |
  awk '
    BEGIN { IGNORECASE=1 }
    /^[[:space:]]{4}[^:]+:$/ { dev = $0; isApple = 0 }
    /Manufacturer: Apple/ { isApple = 1 }
    /Product ID:/ && isApple {
      for (i = 1; i <= NF; i++) {
        if ($i ~ /^0x[0-9a-fA-F]+$/) {
          print $i
          break
        }
      }
    }
  '
)

}