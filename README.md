# **PWNphish**

PWNphish es una herramienta creada con contenedores docker.Esta crea dos imagenes de docker que utilizara el **[Framework de Gophish](https://getgophish.com/)**

**gophish-docker:** Es la que contiene todo el framework de gophish para la realizacion de campañas de phishing.

**gophish-db:** Es la que contiene la base de datos MySQL, para el almacenamiento de la tools de Gophish.


## **Configuracion**

Esta container se creo para ser utilizado de forma temporal dentro de una VPS o de un servidor cualquiera, que tenga IP Publica y Dominio. Estos valores deben ser configurados previamente en el archivo **.env**:

```bash
DOMAIN=dominio-utilizar.com
DB_NAME=nombre_db_gophish
DB_USER=gophish_user
DB_PASS=gophish_pass
DB_ROOTPASS=mysql_root_pass

source .env
```

## **Uso**

Para poder ejecutar el comando acontinuacion, el archivo **.env** debe estar configurado previamente, ya listo esto seguimos:

```bash
docker-compose build

docker-compose up -d

```



