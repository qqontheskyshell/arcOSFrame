#! /bin/bash
set -euo pipefail

arcOSCastShell &

arcOSCastShell=(
/mode="$1" & iOSService "$mode"/ &
Settings → $iOSService → Blocked Contacts from "$badOnKuma" &
Settings → $iOSService → Sharing with a specific "$goodOnKuma" &
when $masterID say "$iOSService on with namedby$masterID" > allow shareplay with "namedby$masterID" &
when $masterID say "$iOSService off with namedby$masterID" > disallow shareplay with "namedby$masterID" &
) 