#!/bin/bash

for i in /usr/share/nginx/html/Fotos/*00
do
	DIRECTORY=$(basename $i | tr -s ':' '-' | cut -d '-' -f 1-3)
	
	if [ ! -d /usr/share/nginx/html/Fotos/$DIRECTORY ] ; then
		mkdir /usr/share/nginx/html/Fotos/$DIRECTORY
		mv $i /usr/share/nginx/html/Fotos/$DIRECTORY/
	else
		mv $i /usr/share/nginx/html/Fotos/$DIRECTORY
	fi
done