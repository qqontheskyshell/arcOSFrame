#! /bin/bash
set -euo pipefail

arcOSCastShell &

arcOSCastShell=(
/mode="$1" & iOSService "$mode"/ &
Settings → $iOSService → Blocked Contacts from "$badOnKuma" &
Settings → $iOSService → Sharing with a specific "$goodOnKuma" &
when $MASTER say "$iOSService on with namedby$MASTER" > allow shareplay with "namedby$MASTER" &
when $MASTER say "$iOSService off with namedby$MASTER" > disallow shareplay with "namedby$MASTER" &
) &