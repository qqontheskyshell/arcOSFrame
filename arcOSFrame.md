arcOSFrame@arcOS > +
lldbFrame > + 
+BaseElementInRF@arcOS /
+ADDR > + "$1" + arcOSQQLocalTarget + SKYNET + CELLID + ADBemulator  + arcOSRFtarget + skyNetSatellite + FULL_DEVICE/
+SCRIPT > + "$2"/
+PORT > + "$3"/
+DEBUG > + 0/

#script
+sudo process launch --* -E DEBUG=$DEBUG_STATE -E PROTOCOL=* --args > +

#using lldb
arcOSFrame@arcOS + arcOSLock@arcOS + $SCRIPT/

#tftp
+tftp $ADDR -c bash "arcOSFrame@arcOS + arcOSLock@arcOS + $SCRIPT"/

#ssh
ssh@arcOS "arcOSFrame@arcOS + arcOSLock@arcOS + $SCRIPT"/

#swift
swift@arcOS "arcOSFrame@arcOS + arcOSLock@arcOS + $SCRIPT"/
#end of main body of lldbFrame and arcOSFrame
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