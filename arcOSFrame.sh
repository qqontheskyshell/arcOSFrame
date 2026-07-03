

#! /bin/bash
set -euo pipefail


#Define lldbFrame function

lldbFrame=(

    ADDR=($1 $KTSAT $RECKON $BaseQQLAND $SKYNET $CELLID $ADBemulator) &
    SCRIPT=$2 &
    PORT=$3 &

    ADBemulator=(10.0.2.*:3000 10.0.2.*:$OPENPORT)

    STATE=(LISTEN ESTABLISHED) &
    OPENPORT=(sudo netstat -tn | grep $STATE | awk '{print $5}' | cut -d: -f1 | sort | uniq)
    MonitorPort=$("lsof -nP -iTCP:$ARCOS_PORT | grep $STATE &" "netstat -atp tcp | grep $STATE" &) &

    APPLE_PORT=$findEveryHardwarePortInAppleDevice &
    deleteFileInIos &
    arcOSLoop=(encrypt* & arcOSLoop & $SCRIPT & arcOSQQnx & arcOSBaseKit)
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




