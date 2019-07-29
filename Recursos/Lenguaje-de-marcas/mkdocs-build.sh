pages:
  - Hardware:
    - Proyecto Celulosa: ./Hardware/Proyecto-Celulosa.md
    - Rasbperry Pi: ./Hardware/Raspberry-Pi.md
    - Rockstor: ./Hardware/Rockstor.md
  - Sistemas Operativos:
    - Equipos Clientes:
      - Acceso Remoto: ./Equipos-Clientes/Acceso-Remoto.md
      - Imágenes del Sistema: ./Equipos-Clientes/Imagenes-del-Sistema.md
      - Punto de restauración: ./Equipos-Clientes/Punto-de-restauracion.md
  - Planificación y Administración de Redes:
  - Lenguaje de Marcas:
    - Mkdocs: ./Lenguaje-de-Marcas/MkDocs.md
  - Bases de datos:
  - Herramientas:
    - Docker:
      - Introducción a Docker: ./Herramientas/Docker/Docker.md
      - Syncthing: ./Herramientas/Docker/Syncthing.md
    - Easy2boot: ./Herramientas/Easy2boot.md
    - Rclone: ./Herramientas/Rclone.md
  - Recursos Adicionales:
    - Comandos de Administración: ./Recursos Adicionales/Comandos-de-Administracion.md
    - Actas: ./Recursos-Adicionales/Comandos-de-Administracion.md
  - Incidencias:
    - 30-04-2019: ./Incidencias/30-04-2019.md
	
	    with io.open(self.abs_input_path, 'r', encoding='utf-8-sig') as f:
IOError: [Errno 2] No such file or directory: '/root/Tipstabet/docs/Equipos-Clientes/Acceso-Remoto.md'
[root@localhost Tipstabet]# vi mkdocs.yml
site_name: TipsTaBet
site_author: Grupo3 ASIR1 Zabalburu
copyright: "Copyright &copy; Grupo3 ASIR1 Colegio Zabalburu"
extra:
 social:
  - type: twitter
    link: https://twitter.com/
theme:
 name: readthedocs
 highlightjs: true
 hljs_languages:
  - yaml
  - rust
  - bash
  - powershell
pages:
  - Hardware:
    - Proyecto Celulosa: ./Hardware/Proyecto-Celulosa.md
    - Rasbperry Pi: ./Hardware/Raspberry-Pi.md
    - Rockstor: ./Hardware/Rockstor.md
  - Sistemas Operativos:
    - Equipos Clientes:
      - Acceso Remoto: ./Equipos-Clientes/Acceso-Remoto.md
      - Imágenes del Sistema: ./Equipos-Clientes/Imagenes-del-Sistema.md
      - Punto de restauración: ./Equipos-Clientes/Punto-de-restauracion.md
  - Lenguaje de Marcas:
    - Mkdocs: ./Lenguaje-de-Marcas/MkDocs.md
  - Herramientas:
    - Docker:
      - Introducción a Docker: ./Herramientas/Docker/Docker.md
      - Syncthing: ./Herramientas/Docker/Syncthing.md
    - Easy2boot: ./Herramientas/Easy2boot.md
    - Rclone: ./Herramientas/Rclone.md
  - Recursos Adicionales:
    - Comandos de Administración: ./Recursos Adicionales/Comandos-de-Administracion.md
    - Actas: ./Recursos-Adicionales/Comandos-de-Administracion.md
  - Incidencias:
    - 30-04-2019: ./Incidencias/30-04-2019.md
markdown_extensions:
 - toc:
    permalink: "#"
~
