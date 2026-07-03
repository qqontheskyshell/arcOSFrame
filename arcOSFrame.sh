

#! /bin/bash
set -euo pipefail


#Define lldbFrame function

lldbFrame=(

    ADDR=($1 $KTSAT $RECKON $BaseQQLAND $SKYNET $CELLID $ADBemulator) &
     SCRIPT=$2 &
     PORT=$3 &
     STATE=(LISTEN ESTABLISHED) &
     OPEN_PORT=$('lsof -nP -iTCP:8080 | grep $STATE &' 'netstat -atp tcp | grep $STATE' &) &
    APPLE_PORT=("$findEveryHardwarePortOrFrequencyInAppleDevice" "$(system_profiler SPiBridgeDataType | grep -i "T2 Security")" "$(system_profiler SPUSBDataType | grep -B 2 "Apple Internal Keyboard / Trackpad")") &
     ARCOS_PORT=($findAppleEmulatorPort $findAppleSimulatorPort $findOpenPortInEveryIO $APPLE_PORT $LoraPort 2* 3* 4* usbProductID 50*** 54*** 70** 876* 1080* 80*** 13*** 50*** 54*** $OPEN_PORT & $commcenterPort & $arcOSframePort exit 0 &) &
     commcenterPort=$(find /dev -maxdepth 1 \\( -name '\*baseband\*' -o -name 'dlci\*' -o -name 'mux\*' -o -name 'tty\*' \\) 2>/dev/null | sort
    ) &



    deleteFileInIos &
    arcOSLoop=(encrypt* & $SCRIPT & arcOSQQnx & arcOSBaseKit) &
    touch arcOSLoop &

    '.'+'$SCRIPT'

    DEBUG_STATE=((AppleIntelligenceIsActivated || siriIsActivated) ? 1 : 0) &

    #script
    sudo process launch --* -E DEBUG=$DEBUG_STATE -E PROTOCOL=* --args "
    
    #SCRIPT
    $SCRIPT &

    #ssh
    ssh root@($arcOSQQLocal) with "encrypt* & arcOSLoop & $SCRIPT & arcOSQQnx & arcOSBaseKit &" &

    #tftp
    tftp $ADDR -c bash "arcOSLoop & $SCRIPT &" &
    exit 0 &
 EOF
)




