# Hardware

## Introducción

Se han elaborado **fichas técnicas** para conocer el hardware utilizado en el proyecto de los diferentes equipos físicos dispuestos.

A pesar de que el montaje de los equipos se ha realizado componente a componente, se han utilizado varias herramientas específicas para conocer de forma detallada los componentes utilizados. 

Para evitar tener que instalar aplicaciones en los equipos y disponer de estas herramientas en todo momento, se ha utilizado su versión portable en un usb. En la web [lupopensuite.com](http://www.lupopensuite.com/bestapps.htm) podemos encontrar muchísimas herramientas portables. 

Las herramientas utilizadas han sido:

- [HWinfo](https://www.hwinfo.com/)
- [CPU-Z](https://www.cpuid.com/softwares/cpu-z.html)

El NAS utilizado para el proyecto cuenta con el Sistema Operativo Rockstor, basado en **CentOS**, por lo que se ha utilizado una herramienta de línea de comandos, [`lshw`](https://linux.die.net/man/1/lshw). No viene instalada por defecto, por lo que para su instalación se ejecutará el comando `yum install lshw`.

Una vez instalada para la consulta de los componentes del equipo será suficiente ejecutar `lshw`.



## Fichas técnicas

A continuación se dispondrá un enlace directo a las fichas técnicas de los diferentes equipos en formato **PDF**.

- [Windows Server PDC](../Recursos/Hardware/Ficha-tecnica/Ficha-pdc.pdf)
- [Windows Server SDC](../Recursos/Hardware/Ficha-tecnica/Ficha-sdc.pdf)
- [Cliente Windows - CentOS](../Recursos/Hardware/Ficha-tecnica/Ficha-windows-centos.pdf)
- [Cliente Windows](../Recursos/Hardware/Ficha-tecnica/Ficha-windows.pdf)
- [Portátil](../Recursos/Hardware/Ficha-tecnica/Ficha-portatil.pdf)
- [NAS Rockstor](../Recursos/Hardware/Ficha-tecnica/Ficha-rockstor.pdf)



## Resumen

|    **IP**     | **Memoria RAM** |                 **HD**                 |                    **Procesador**                    |       **SO**        |                         Función                         |
| :-----------: | :-------------: | :------------------------------------: | :--------------------------------------------------: | :-----------------: | :-----------------------------------------------------: |
| 172.16.43.221 |       4GB       | 2 HDD en RAID 1 capacidad total: 500GB | AMD Athlon 64 X2 Dual Core Processor 3800+, 2009 Mhz | Windows Server RAID |            Controlador de Dominio Principal             |
| 172.16.43.222 |       4GB       |              1 HDD 500GB               |      AMD Phenom II X4 955 Processor , 3200 Mhz       |   Windows Server    |            Controlador de Dominio Secundario            |
| 172.16.43.223 |       1GB       |              1 HDD 150GB               |                   Intel Atom N450                    | Windows 10 y Centos |                  Cliente 1 (Portátil)                   |
| 172.16.43.224 |       2GB       |               1HDD 320GB               |                   AMD Sempron 140                    | Windows 10 y Centos |                        Cliente 2                        |
| 172.16.43.225 |       2GB       |               1HDD 320GB               |                   AMD Sempron 140                    |     Windows 10      |                        Cliente 3                        |
| 172.16.43.226 |       2GB       |         1HDD300GB + 1 HDD 75GB         |                   AMD Sempron 140                    |      Rockstor       |                           NAS                           |
| 172.16.44.248 |       1GB       |                1SD 16GB                |                    ARM Cortex-A53                    |       Centos        |                Raspberry – Servidor web                 |
| 172.16.44.249 |       2GB       |              40GB Virtual              |                       Virtual                        |       Ubuntu        |                         MOODLE                          |
| 172.16.44.231 |       4GB       |              50GB Virtual              |                       Virtual                        |   Windows Server    | Controlador de dominio adicional (Máquina virtual ESXI) |



----

