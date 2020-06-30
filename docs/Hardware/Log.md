# Log acceso servidor Web

En este apartado veremos como obtener las direcciones IP (sin repeticiones) de las diferentes conexiones que recibe el servidor web. Para llevar a cabo esto utilizaremos un script sencillo que se explicará en el siguiente apartado.

!!!note
    Es interesante que cada vez que se descubra una dirección IP diferente a la que se encuentra en el fichero destino, se notifique al administrador. Una forma de hacerlo es utilizando el comando `mail`.



## Script

El **script** que utilizaremos será el siguiente. Incluye comentarios para explicar cual es el proceso que sigue el script.

````bash
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
````

!!!note
    El script se puede descargar pulsando [aquí](../Recursos/Hardware/log-script.sh).



## Ejecución diaria

Es necesario que el script se ejecute diariamente a las 09:00 de la mañana, por lo tanto deberemos utilizar cron para ellos. El funcionamiento del mismo se ha explicado en el apartado **Cron** del [Proyecto Celulosa](Proyecto-Celulosa.md).

````bash
#Añadimos el script a crontab.
crontab -e

0 9 * * * sh /root/script.sh
````



----

