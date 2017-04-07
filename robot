#!/bin/bash

for GROUP in n2p2-j n2p2-i
do
	REPORT=$GROUP.md
	rm -rf target
	rm $REPORT
	mkdir target

	for ETU in $(getent group info-$GROUP| cut -f 4 -d ':' | tr ',' ' ')
	do
		git clone https://git-iut.univ-lille1.fr/$ETU/kata-convert target/$ETU
	done

	for ETU in $(getent group info-$GROUP| cut -f 4 -d ':' | tr ',' ' ')
	do
		NAME=$(getent passwd $ETU| cut -f 5 -d ':')
		POINTS=0
		[ -d target/$ETU ] && POINTS=$(($POINTS +1))
		[ -f target/$ETU/.gitignore ] && POINTS=$(($POINTS +1))
		[ -d target/$ETU/bin ] && POINTS=$(($POINTS -10))
		[ -f target/$ETU/src/fr/univlille1/iutinfo/convert/Convert.java ] && POINTS=$(($POINTS +1))
		[ -f target/$ETU/src/fr/univlille1/iutinfo/convert/ConvertTest.java ] && POINTS=$(($POINTS +1))

		echo "$NAME $POINTS" >> $REPORT
		
	done
done
