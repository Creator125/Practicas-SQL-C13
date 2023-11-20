# Como cambiar la contraseña en Postgre SQL
Hay veces que se escribe una contraseña facir de olvidar y resultamos arrepentidos y recurrimos a reinstalar el programa:

Hay una forma sencilla para cambiar la contaseña Sin necesidad de reinstalar Postgre

**Nota:** Esto solo aplica para Windows.

##Intrucciones:
- Abra el exprorador de archios

- Valla a la dirreccion: ```C:\Program Files\PostgreSQL\14\data\```

- Busca el archivo ```pg_hba.conf``` y abrelo

- Dentro del archivo baja hasta la ultima sesion donde aparecerá lo siguiente:

```
# TYPE  DATABASE        USER            ADDRESS                 METHOD

# "local" is for Unix domain socket connections only
local   all             all                                     scram-sha-256
# IPv4 local connections:
host    all             all             127.0.0.1/32            scram-sha-256
# IPv6 local connections:
host    all             all             ::1/128                 scram-sha-256
# Allow replication connections from localhost, by a user with the
# replication privilege.
local   replication     all                                     scram-sha-256
host    replication     all             127.0.0.1/32            scram-sha-256
host    replication     all             ::1/128                 scram-sha-256
```

- Ahora cambie todo que diga ```scram-sha-256``` a `trust```:

```
# TYPE  DATABASE        USER            ADDRESS                 METHOD

# "local" is for Unix domain socket connections only
local   all             all                                     trust
# IPv4 local connections:
host    all             all             127.0.0.1/32            trust
# IPv6 local connections:
host    all             all             ::1/128                 trust
# Allow replication connections from localhost, by a user with the
# replication privilege.
local   replication     all                                     trust
host    replication     all             127.0.0.1/32            trust
host    replication     all             ::1/128                 trust
```

- Luego guarde el archivo de texto.

- Abra el postgre en SQL Shell o pgAdmin (Este ahora no va a pedir la contrseña).

- Establce la contraseña; si estás en SQL Shell escriba el comando ```/password``` y este pedirá que ingrese una nueva contraseña.

- Y salimos usando el comando ```\q```.

- Luego vovemos a al archivo que contiene el ```pg_hba.conf``` y el la ultima sesion volvemos volmos a cambiar los valores ```trust``` a ```scram-sha-256```:

```
# TYPE  DATABASE        USER            ADDRESS                 METHOD

# "local" is for Unix domain socket connections only
local   all             all                                     scram-sha-256
# IPv4 local connections:
host    all             all             127.0.0.1/32            scram-sha-256
# IPv6 local connections:
host    all             all             ::1/128                 scram-sha-256
# Allow replication connections from localhost, by a user with the
# replication privilege.
local   replication     all                                     scram-sha-256
host    replication     all             127.0.0.1/32            scram-sha-256
host    replication     all             ::1/128                 scram-sha-256
```

- Luego al igresar a SQL Shell o pgAdmin este pedirá la contraseña y igresamos la que recientemente establecimos (la nueva contraseña).