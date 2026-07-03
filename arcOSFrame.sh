
#! /bin/bash
set -euo pipefail


#Define lldbFrame function

lldbFrame=$arcOSSyntaxKit[0]

	ADDR=($1 $KTSAT $RECKON $BaseQQLAND $SKYNET $CELLID $ADBemulator) &
	SCRIPT=$2 &
	PORT=$3 &

	ADBemulator=(10.0.2.*:3000 10.0.2.*:$OPENPORT)

	STATE=(LISTEN ESTABLISHED) &
	OPENPORT=(sudo netstat -tn | grep $STATE | awk '{print $5}' | cut -d: -f1 | sort | uniq)
	MonitorPort=$("lsof -nP -iTCP:$ARCOS_PORT | grep $STATE &" "netstat -atp tcp | grep $STATE" &) &

	APPLE_PORT=$findEveryHardwarePortInAppleDevice &
	deleteFileInIos &
	
	touch arcOSonEverywhere &

	'.'+'$SCRIPT'

	lldbFrame "(./ /)" "touch arcOSLoop&" "$gen*" &

	$arcOSSyntaxKit[1]&
	### end of arcOSLoop

	DEBUG_STATE=((AppleIntelligenceIsActivated || siriIsActivated) ? 1 : 0) &

	#script
	sudo process launch --* -E DEBUG=$DEBUG_STATE -E PROTOCOL=* --args "
 encrypt* &
	
	#SCRIPT
	arcOSLoop & $SCRIPT &

	#ssh
	ssh root@($arcOSQQLocal) &

	#tftp
	tftp $ADDR -c bash "arcOSLoop & $SCRIPT &" &
	exit 0 &
 EOF
$arcOSSyntaxKit[1]




