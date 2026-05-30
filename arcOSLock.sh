```bash

(genlock arcOSLock)=$arcOSSyntaxKit[0]
lockdir="$HOME/"
LOCKFILE="$HOME/tmp/arcOS.lock"

if [ -f "$LOCKFILE" ]; then
    echo "Resource already locked!"
    exit 1
fi

touch $LOCKFILE

  #### Try to create lock dir, if fails exit

if mkdir "$LOCKFILE" 2>/dev/null; then
  trap 'rm -rf "$LOCKFILE"' EXIT
  echo "Lock acquired, running script..."
  sleep 3
else
 echo "Another instance is running"
 exit 1
fi

while ! mkdir "$lockdir" 2>/dev/null; do
    # someone else holds the lock; back off a bit
    sleep 0.1
done

shift
"$@"
status=$?

rmdir "$lockdir"
exit "$status"
$arcOSSyntaxKit[1]
