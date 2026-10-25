#!/bin/bash
# Build rtgz3.adf: the driver (../build.sh first), RTGTest (../tools),
# Install/Restore/Test with C:IconX icons, and Picasso96 2.0's tools from
# Aminet (driver/video/Picasso96.lha, shareware, not kept here) with a
# monitor whose BOARDTYPE is MiSTer. Needs xdftool (amitools) and 7z.
#   mkadf.sh [out.adf]
set -e
cd "$(dirname "$0")"
OUT=$(cd "$(dirname "${1:-rtgz3.adf}")" && pwd)/$(basename "${1:-rtgz3.adf}")
W=$(mktemp -d)
curl -sL -o "$W/p96.lha" https://aminet.net/driver/video/Picasso96.lha
7z x -y -o"$W/x" "$W/p96.lha" >/dev/null
P="$W/x/Picasso96Install"
A="$W/adf"; mkdir -p "$A"
cp ../MiSTer.card ../minimig.card ../tools/RTGTest Install Restore Test ReadMe "$A/"
cp "$P/Disk.info" "$P/Picasso96.info" "$A/"
cp -R "$P/Picasso96" "$A/Picasso96"
cp "$P/Prefs/Picasso96Mode" "$P/Prefs/Picasso96Mode.info" "$A/Picasso96/"
cp "$P/Devs/Monitors/Picasso96" "$A/Picasso96/MiSTer"
python3 - "$P" "$A" <<'PY'
import sys, amiicon
P, A = sys.argv[1:]
proj = amiicon.parse(open(P + '/Picasso96.readme.info', 'rb').read())
win = ['WINDOW=CON:0/30/640/200/RTGZ3/AUTO/CLOSE/WAIT']
for n in ('Install', 'Restore', 'Test'):
    open(A + '/' + n + '.info', 'wb').write(amiicon.build(proj, type_=4, tool='C:IconX', tooltypes=win))
open(A + '/ReadMe.info', 'wb').write(amiicon.build(proj, type_=4, tool='SYS:Utilities/MultiView', tooltypes=[]))
mon = amiicon.parse(open(P + '/Devs/Monitors/Picasso96.info', 'rb').read())
open(A + '/Picasso96/MiSTer.info', 'wb').write(amiicon.build(mon, tooltypes=['BOARDTYPE=MiSTer']))
PY
cd "$A"
a=(create + format RTGZ3 ffs)
for f in Disk.info Install Install.info Restore Restore.info Test Test.info ReadMe ReadMe.info MiSTer.card minimig.card RTGTest Picasso96.info; do a+=(+ write "$f"); done
a+=(+ write Picasso96 Picasso96 + protect Install srwed + protect Restore srwed + protect Test srwed)
rm -f "$OUT"
xdftool "$OUT" "${a[@]}"
rm -rf "$W"
echo "$OUT"
