#!/bin/bash

for i in /usr/share/nginx/html/Fotos/*.jpg
do
	DIRECTORY=$(basename $i | tr -s ':' '-' | cut -d '-' -f 1-4)\:00
	
	if [ ! -d /usr/share/nginx/html/Fotos/$DIRECTORY ] ; then
		mkdir /usr/share/nginx/html/Fotos/$DIRECTORY
		mv $i /usr/share/nginx/html/Fotos/$DIRECTORY/
	else
		mv $i /usr/share/nginx/html/Fotos/$DIRECTORY/
	fi
done