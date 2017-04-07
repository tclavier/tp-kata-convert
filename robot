#!/bin/bash
REPORT=n2p2-j.md
rm -rf target
rm $REPORT
mkdir target

for ETU in $(getent group info-n2p2-j| cut -f 4 -d ':' | tr ',' ' ')
do
	git clone https://git-iut.univ-lille1.fr/$ETU/kata-convert target/$ETU
done

for ETU in $(getent group info-n2p2-j| cut -f 4 -d ':' | tr ',' ' ')
do
	POINTS=0
	[ -d target/$ETU ] && POINTS=$(($POINT +1))
	[ -f target/$ETU/.gitignore ] && POINTS=$(($POINT +1))

	echo "$ETU $POINTS" >> $REPORT
	
done
