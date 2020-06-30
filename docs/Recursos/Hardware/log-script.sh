#Declaramos la variable para el fichero donde se encuentra el log de acceso
ficherolog='/var/log/nginx/access.log'

#Cortamos la parte de la ip de la línea del fichero log
lineafichero=`cut -d ' ' -f 1 $ficherolog`

#Declaramos la variable con el fichero donde almacenaremos las direcciones IP que han accedido al servidor web
ficherodestino='/root/IPs'

#Utilizamos la función "for" para comprobar línea a línea si la dirección ip ya se encuentra en el fichero
for i in $lineafichero ; do
        linea=`echo $i`
        #Buscamos la línea en el fichero destino.
        grep $linea $ficherodestino
        #Introducimos la función "if" para comprobar si la dirección IP no se encuentra en el fichero destino. En el caso de que no se encuentre se añadirá al fichero.
        if [ $? -eq 1 ]; then
                echo `date | cut -d ' ' -f 1-3` $i >> $ficherodestino
        fi
done