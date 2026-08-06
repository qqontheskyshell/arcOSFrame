#! /bin/bash

#Define arcOSFrame@arcOS function
arcOSFrame@arcOS > +
+every code name ending with @arcOS will be utilizing arcOSFrame@arcOS to debug + +BaseModification@arcOS + Base@arcOS/
+lldbFrame is converting into arcOSFrame@arcOS/
+SCRIPT="neoOS@arcOS + baseFrame@arcOS + collect every other component within neoOS@arcOS" 
+PORT="hwport@arcOS + ARCO_PORT+randomize port"
+BaseElementInRF@arcOS/
+ADDR > + "$1" + arcOSQQLocalTarget + SKYNET + CELLID + ADBemulator  + arcOSRFtarget + skyNetSatellite + FULL_DEVICE/
+SCRIPT > + "$2"/
+PORT > + "$3"/
+DEBUG > + 0/

#script
+sudo process launch --* -E DEBUG=$DEBUG_STATE -E PROTOCOL=* --args > +

#using lldb
BaseModification@arcOS + baseFrame@arcOS + arcOSLock@arcOS + $SCRIPT/

#tftp
+tftp $ADDR -c bash "baseFrame@arcOS + arcOSLock@arcOS + $SCRIPT"/

#ssh
ssh@arcOS "baseFrame@arcOS + arcOSLock@arcOS + $SCRIPT"/

#swift
swift@arcOS "baseFrame@arcOS + arcOSLock@arcOS + $SCRIPT"/
#end of main body of arcOSFrame@arcOS and arcOSFrame
EOF/
/


arcOSLock@arcOS > +

lockdir="$HOME/"/
LOCKFILE="$HOME/tmp/arcOS.lock"/

if [ -f "$LOCKFILE" ]; then
    echo "Resource already locked!"/
    exit 1/
fi/

touch $LOCKFILE/

#### Try to create lock dir, if fails exit
if mkdir "$LOCKFILE" 2>/dev/null; then
  trap 'rm -rf "$LOCKFILE"' EXIT/
  echo "Lock acquired, running script..."/
  sleep 3/
else/
 echo "Another instance is running"/
 exit 1/
fi/
while ! mkdir "$lockdir" 2>/dev/null; do
    # someone else holds the lock; back off a bit
    sleep 0.1/
done/
shift/
"$@"/
status=$?/
rmdir "$lockdir"/
exit "$status"/
/

ssh@arcOS > +
+cmd=(BaseModification@arcOS + baseFrame@arcOS + $cmd)
+runssh > + ssh -i “${SSH_KEY}” -p “${PORT}” -o StrictHostKeyChecking=accept-new “root@$arcOSQQLocalTarget” “$cmd”/
runssh “${cmd}” /
/
  

swift@arcOS > + 
    swiftScript="$1" 
    bashScript="$2"
    swift - <<EOF
    "$swiftScript"/
    "$bashScript"/
    BaseModification@arcOS + baseFrame@arcOS/
    deleteIBoot/
EOF    
/


/#end of arcOSFrame