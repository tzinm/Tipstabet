# Docker 

![Docker Logo](../../Imagenes/Docker/Docker_logo.png)

### ¿En qué consiste?

Docker es una herramienta que permite **desplegar aplicaciones** en **contenedores**, esto permite "levantar" dichas aplicaciones rápidamente y de forma portable.

Para entender el funcionamiento básico de **Docker** es necesario conocer dos conceptos fundamentales, **Imagenes** y **Contenedores**.





Imagenes --> Defines toda la configuración, es decir el software, las librerías, etc. que necesita la aplicación o servicio que se requiera.

Contenedores --> una instancia en ejecución de una imagen, a diferencia de una máquina virtual, un contenedor es un proceso del sistema con lo que se aprovecha del hardware que tiene el anfitrión, evitando tener que emular ese hardware.

Escalable

Destruir y recrear tantas veces como quieras, de hecho es una de las formas de actualizar los contenedores.

El proceso está aislado del propio sistema, 

las imagenes están limpias, son super ligeras, únicamente se isntala lo necesario para correr el servicio, unas son independientes a otras, si se cae no tiene porque afectar al sistema anfitrión ni a otros contenedores salvo que dependan unos de otros.

Tenemos un repositorio: Docker Hub

El peso es mucho inferior al de una máquina virtual, de hecho de una de las imagenes base desde la cual se construye otras imagenes se denomina alpine y pesa alrededor de 15MB.

La configuración y los datos son persistentes ya que se utilizar una configuración en base al *mapeo*.

**Raspberry pi**:

````bash
yum install docker
````



No podemos instalar la versión actual de Docker (Docker CE or Docker Comunity Edition), tenemos que instalar la versión de Docker que se encuentra en el repositorio.

https://docs.docker.com/install/

https://wiki.centos.org/SpecialInterestGroup/AltArch/armhfp

https://docs.docker.com/install/linux/docker-ce/centos/

#### Servicios instalados en Docker:

- [Syncthing](Syncthing.md)

