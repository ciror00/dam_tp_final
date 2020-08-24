# Trabajo final

Alumno: Ciro Edgardo Romero

Docente: Brian Ducca

## Introduccion 🚀

Este trabajo se realiza como proyecto integrador de la materia **Desarrollo de Aplicaciones Multiplataforma**, en el contexto de la Carrera de Especializacion en Internet de las Cosas.

## Pre-requisitos

Es necesario tener instaladas las siguientes herramietnas:
 - [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
 - [Docker](https://docs.docker.com/get-docker/)
 - [Docker Compose](https://docs.docker.com/compose/install/)
 - [Npm](https://docs.npmjs.com/cli/install) 
 - [Ionic](https://ionicframework.com/docs/intro/cli)

Sistema operativo **Ubuntu 16**, o superior.

## Pasos para iniciar el programa

### Descargar el repositorio

Cloran el repositorio e ingresar en el carpeta
```
git clone https://github.com/ciror00/dam_tp_final

cd dam_tp_final
```
Dentro del repositorio, encuentran las dos carpetas del proyecto:
 - front-end
 - back-end

Ademas, una carpeta con una copia de la base de datos para hacer pruebas
 - backup

### Iniciar el back end

Dentro de la raiz del proyecto, ejecutar el script de arranque del back end
```
chmod +x startup_back-end.h
./startup_back-end.h
```
El script descargará e iniciariá los contenedores con la base de datos MySQL y servidor NodeJs.

### Iniciar el front end

Ingresar en la carpeta correspondiente
```
cd front-end/
npm install
ionic serve -o
```
Se descargaran las dependencias correspondientes de Angular & Ionic. Al terminar se abrará el navegador con la aplicacin.

### Importar base de dato (opcional)

Ingresar en el cliente administrador de la base de datos
```
http://localhost:3000
```
 - Usuario: root
 - Contraseña: userpass

Importar la base de datos que se encuentra en la carpeta `backup/backup.sql`.

## Licencia 📄

Este proyecto está bajo la Licencia GPL.

---