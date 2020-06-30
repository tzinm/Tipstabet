# Sincronización multidispositivo

**¿Cómo trabajamos?**

El flujo de trabajo es importante, por lo que intentamos que tengamos todo sincronizado para ser más productivos.  A continuación se describen las herramientas utilizadas.

Por un lado montamos la unidad de drive donde se almacena todo el contenido en nuestro equipo con la herramienta [Raidrive](https://www.raidrive.com/), herramienta gratuita para montar la unidades de almacenamiento de servicios en la nube en nuestro equipos localmente.

De este modo evitamos tener el mismo contenido de manera local para que no ocupe almacenamiento y además la sincronización es instantánea por lo que lo que modifiquemos se verá en todos los dispositivos.

Una vez que tenemos esta parte solucinada, pasamos a utilizar otra herramienta de sincronización descentralizada (es decir que no depende de ningún servidor) para mantener sincronizada toda la información. Esta herramienta utilizada se llamada [Syncthing](https://syncthing.net/).

Para la instalación de esta herramienta en los diferentes dispositivos hemos utilizado Docker, donde explicamos un poco en que consiste esta herramienta en este [enlace](Dcoker)

Lo utilizamos para mantener sincronizado el contenido de la web entre el NAS  y la raspberry pi.

A device ID is a unique, cryptographically-secure
identifier that is generated as part of the key generation the first time you start Syncthing.

Two devices will only connect and talk to each other if they are both configured with each other’s device
ID. Since the configuration must be mutual for a connection to happen, device IDs don’t need to be kept
secret. They are essentially part of the public key.



## Syncthing - Windows 10

En otro

Si ejecutamos syncthing se nos abrirá la consola de comandos de Windows y el navegador, por ese motivo se utilizan esa serie de argumentos para que esto no se incie.

La ruta por defecto es un directorio Sync dentro del usuario con el que hemos iniciado sesión.



[Descarga la versión de 64 bits](https://github.com/syncthing/syncthing/releases/download/v1.1.3/syncthing-windows-amd64-v1.1.3.zip)



Nos interesa que la herramienta **Syncthing** esté funcionando en todo momento y que además se inicie con el sistema. Para ello hemos creado un fichero **.bat** que será introducido en la ruta que utilizado Windows para iniciar las aplicaciones con el Sistema Operativo.

````powershell
start "Syncthing" syncthing.exe -no-console -no-browser
````



[Start on login](https://docs.syncthing.net/users/autostart.html#start-on-login)

## Syncthing - Raspberry pi



Puesto que rclone no funciona correctamente en la raspberry optamos por utilizar Syncthing como herramienta de sincronización para tener toda la documentación organizada.



Por defecto el espacio que hay en la raspberry pi es muy pequeño en la partición home del root por lo que es necesario expandirla, los pasos a seguir son:

Note:

**Necesario** hacerlo antes de realizar cualquier otra cosa puesto que todo lo que hay en la partición "root" se pierde.

Fuente: https://github.com/rharmonson/richtech/wiki/Using-CentOS-7.2.1511-Minimal-on-the-Raspberry-PI-3#manual-expand-rootfs

