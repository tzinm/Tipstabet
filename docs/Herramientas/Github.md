# GitHub Pages

Para dejar el contenido desarrollado público, hemos optado por utilizar la herramienta **GitHub Pages** que nos proporciona **GitHub**.

**¿Qué es GitHub?**

Es una web que implementa el control de versiones, y que permite mantener proyectos públicos de forma gratuita alojados en dicha web.

**¿Qué es GitHub Pages?**

Es una herramienta sencilla que ofrece **GitHub** para alojar una página web. Es similar a un servicio de hosting.

GitHub Pages nos ofrece [dos alternativas](https://pages.github.com) para la creación de páginas web.

- **GitHub account:** en este caso sólo disponemos de una única página web que va a asociada a nuestro nombre de usuario. Si nuestro nombre de usuarios es **sfera**, nuestra página web deberá ser **sfera.github.io**. 
- **Project Site:** cuando hablamos de este tipo de webs, disponemos de *sites* ilimitados. Siguiendo con el ejemplo anterior, el dominio principal será **sfera.github.io**, finalizando con **/nombre_del_proyecto**. Por lo tanto, si nuestro proyecto es **tipstabet**, el dominio completo sería **sfera.github.io/tipstabet**.

Hemos optador por crear un **Project Site** puesto que nos posibilita en el futuro crear más páginas web de diferentes proyectos.

!!! note
	El dominio de nuestra página web se puede personalizar. Podemos seguir [este enlace](https://help.github.com/en/articles/using-a-custom-domain-with-github-pages) donde se explica como realizar este proceso.



## Iniciando la implementación

Durante el proyecto la documentación se ha implementado con la herramienta **MkDocs**. Se ha desarrollado de forma local en una **Raspberry pi** y utilizando dicho dispositivo para alojarlo en su servidor **Nginx**. 

Para publicarlo en GitHub disponemos de dos opciones, una siguiendo [esta guía](https://www.mkdocs.org/user-guide/deploying-your-docs/#github-pages) conservando el tema utilizado inicialmente ([Read the Docs](https://www.mkdocs.org/user-guide/deploying-your-docs/#read-the-docs)), y otra segunda opción utilizando el tema [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

Finalmente hemos decidido cambiar a esta segunda opción puesto que dispone de mayores configuraciones a través del fichero **mkdocs.yml** y una mejor adaptación visual en los diferentes dispsitivos.

Las herramientas utilizadas para llevar a cabo este proceso han sido varias. Por un lado hemos utilizado [Docker](https://www.docker.com) para realizar diversas pruebas y llevar a cabo la implementación final, y por otro lado [Git](https://git-scm.com) como herramienta de **Control de Versiones**.

Ambas herramientas se encuentran disponibles para las principales plataformas (Linux, Windows y MacOS). Para esta parte del proyecto hemos utilizado un equipo con Sistema Operativo **MacOS**.

- [Instalación de Docker en MacOS](https://docs.docker.com/v17.12/docker-for-mac/install/)

- [Instalación de Git en MacOS](https://www.atlassian.com/git/tutorials/install-git)



### Git

Es la herramienta de Control de Versiones por excelencia. En el partado anterior hemos puesto un enlace donde encontraremos las guías para la instalación en las diferentes plataformas en las que se encuentra disponible.

En primer lugar comprobaremos que tenemos **Git** instalado en nuestro sistema.

```bash
git --version
```

Una vez que verificamos que tenemos instalado procederemos a realizar las configuraciones globales, estableciendo un nombre de usuario y una cuenta de email que quedarán registradas cuando realicemos algún cambio en el repositorio.

- Configuración del nombre de usuario

```bash
git config --global user.name "nombre"
```

- Configuración del email

```bash
git config --global user.email "email"
```

- Listar los parámetros que hemos configurado

```bash
git config --list
```

La forma de trabajar de Git es rastreando el **Working Directory ** en busca de cambios que se hayan realizado, para ello es necesario indicarle que directorio tiene que rastrear. El comando para indicar a Git que queremos rastrear un directorio es el siguiente (debemos estar situados dentro del directorio que queremos que actue como **Working Directory**):

```bash
git init
```

Si ejecutamos el comando `ls -la` veremos que aparece un directorio oculto denominado **.git/**, esto significa que se ha iniciado git correctamente.

En el directorio que hemos iniciado git nos encontramos con lo siguiente:

- Directorio con la documentación
- Fichero **mkdcos.yml**
- Directorio **/site** que contiene todos los ficheros generados por MkDcos para mostrar como página web.

Todo lo anterior no queremos que se muestre en la rama principal de nuestro repositorio (branch/rama master). Git nos proporiciona una forma fácil de solucionarlo, un fichero denominado **.gitignore** que nos permite incluir tanto ficheros como directorios del **Working Directory** sobre los que no queremos que git lleve un control. A continuación podemos ver que hemos incluido dentro de este fichero.

```bash
#MacOS
.DS_Store

#Site to build
/site
/docs
mkdocs.yml
```

Nos quedan dos últimos pasos, añadir el repositorio remote y subir los ficheros que pertenecen a la rama master.

```bash
#Añadimos el repositorio remoto
git remote add origin repositorio_remoto

#Realizamos el commit sobre los ficheros de la rama master
git commit -am "Comentario"
```

!!! note
	**repositorio_remoto** es la dirección que nos proporicona GitHub en formato ssh para conectarnos a él. Es necesario [configurar ssh](https://medium.com/@ancizj393/crear-una-clave-ssh-en-git-y-vincular-en-tu-cuenta-de-github-e7a6b22bc93f).



### Docker

Para implementar GitHub lo vamos a hacer a través de Docker. El desarrollador de este tema tiene un contenedor en el repositorio de Docker ([Docker Hub](https://hub.docker.com/r/squidfunk/mkdocs-material)) que facilita todo el proceso para subir el contenido a nuestro repositorio remoto.

En apartados anteriores hemos dejado un enlace a la instalación de Docker en MacOS. El proceso es muy sencillo, y al igual que sucede con **Git** podemos verificar si está correctamente instalado ejecutando el siguiente comando:

```bash
docker --version
```

No vamos a entrar a ver con detalle el funcionamiento de Docker, es un servicio con multitud de opciones y comandos. La documentación oficial es muy amplia y podemos encontrar información y [guías](https://docs.docker.com/v17.12/get-started/) sobre prácticamente todo lo que engloba Docker.

Vamos a desglosar únicamente el comando que debemos ejecutar para poner en marcha nuestro proyecto. El comando es el siguiente:

```bash
docker run --rm -it -v ~/.ssh:/root/.ssh -v ~/.gitconfig:/root/.gitconfig ~/tipstabet:/docs squidfunk/mkdocs-material gh-deploy -m "Comentario"
```

- **docker run:** comando utilizado para crear contenedores a partir de una imagen.

- **-\-rm:** comprueba si existe el mismo contenedor, y si es así lo elimina.

- **-it:** los contenedores necesitan una capa llamada **CMD** para que el contenedor pueda funcionar. Otra forma de hacerlo es con esta opción, que mantiene una **tty** interactiva.

- **-v:** hace referencia a los volúmenes de Docker. Su cometido (en este caso) es compartir ficheros de la máquina anfitrión con el contenedor. La ruta que se establece al a izquierda de los `:` es la de nuestra máquina local, y a su derecha es la ruta dentro del contenedor en Docker.

- **squidfunk/mkdocs:** es la imagen utilizada. En caso de que no la tengamos descargada previamente, la ejecución del comando `docker run` se demorará porque la descargará.
- **~/.gitconfig:/root/.gitconfig**: permite mostrar el usuario que ha hecho el commit.

- **~/tipstabet:/docs:**  la ruta donde se encuentra la documentación en nuestra máquina. 

- **~/.ssh:/root/.ssh:** la ruta donde se encuentra almacenada nuestras llaves ssh.donde.

- **gh-deploy**: es una utilidad para realizar la implementación directa con GitHub. En este [enlace](https://github.com/davisp/ghp-import) podemos encontrar más información sobre esta herramienta. 
- **-m "Comentario"**: permite personalizar el comentario del commit.



!!! note
	**gh-deploy** crea una rama nueva llamada **gh-pages** que es la que utiliza GitHub como hosting para después poder visualizar la página web correctamente. Con lo cual tendremos dos ramas, la rama master donde se encontrará el fichero **.gitignore** que hemos explicado anteriormente, y el fichero README.md que explica en que consiste el repositorio.



----

