#!/bin/sh
build_airport() {
	echo $1;
	case $1 in
		*)	slope=0.025;
			perimeter=5.0;;
	esac
	genapts850 --threads --input=data/airports/$1.dat --work=./work --dem-path=SRTM-1 --max-slope=$slope --perimeter=$perimeter
}
if [ "$2" != "soft" ]
then
	echo "Hard rebuilt: Removing old work files";
	rm -r work/AirportArea work/AirportObj;
fi
build_airport $1;
