#!/bin/bash

#Establecemos el nombre que daremos al documento.
FECHA=$(date | tr -s ' ' '-' | cut -d '-' -f 1-4)

#Ejecutamos el comando para tomar la fotografía.
raspistill -o /usr/share/nginx/html/Fotos/$FECHA.jpg

#Pausamos el script durante 30 segundos.
sleep 30s

#Volvemos a generar la variable, si no tomaría el mismo nombre que el fichero anterior.
FECHA=$(date | tr -s ' ' '-' | cut -d '-' -f 1-4)

#Ejecutamos de nuevo el comando para tomar la fotografía.
raspistill -o /usr/share/nginx/html/Fotos/$FECHA.jpg