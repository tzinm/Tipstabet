# Comandos de Administración

## Localetctl 

**Control de la configuración regional y la configuración de teclado:**

````bash
#Invocar la ayuda
localectl -h

#Listar la lista de las asignaciones de teclado
localectl list-keymaps

#Establecer una asignación de las anteriores listadas
localectl set-keymap es
````



## Timedatectl

**Control de la fecha y hora del sistema:**

````bash
#Estado actual
timedatectl

#Mostrar las zonas horarias disponibles
timedatectl list-timezones

#Cambiar zona horaria
timedatectl set-timezone Europe/Madrid
````



## Yum 

**Gestor de actualizaciones e instalación de paquetes:**

````bash
#Búsqueda en los respositorios
yum list nombre_del_paquete

#Búsqueda de paquetes instalados en el sistema
yum list installed nombre_del_paquete

#Historial de yum
yum history

#Información sobre uno de los "id" del historial de yum
yum history info id

#Deshacer las acciones que corresponden a un "id"
yum history undo id

#Deshacer las acciones correspondientes al último "id"
yum history undo last

````



## Systemctl

**Administrador de los servicios en Linux vía Systemd**

````bash
#Iniciar un servicio
systemctl start nombre_del_servicio

#Conocer el estado de un servicio
systemctl status nombre_del_servicio

#Parar un servicio
systemctl stop nombre_del_servicio

#Reiniciar un servicio
systemctl restart nombre_del_servicio

#Habilitar un servicio para que se inicie con el sistema
systemctl enable nombre_del_servicio
````



----

