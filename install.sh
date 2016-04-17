#! /bin/sh

Z=`basename $0`

die() {
    echo "$Z: $@" 1>&2
    exit 1
}


pref=$1; shift
test "x$pref" = "x" && die "Usage: $0 INSTALL-DIR-PREFIX"


files="rsbep rsbep_chopper"
auxfiles="contrib/freeze.sh"

mkdir -p $pref/bin

echo "$Z: Installing into $pref/bin .."

for f in $files $auxfiles; do
    cp $f $pref/bin
done
