for i in work/*
do
	if [ `echo $i | cut -c 6-99` != "AirportArea" -a `echo $i | cut -c 6-99` != "AirportObj" -a  `echo $i | cut -c 6-99` != "SRTM-1" ]
	then
		rm -r $i
	fi
done
cp -r work-corine/* work/
cp -r work-osm/* work
