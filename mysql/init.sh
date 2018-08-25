#!/bin/bash

if [ "$MYSQL_PASSWORD" ] ; then

	TEMP_FILE='/tmp/mysql-first-time.sql'
	cat > "$TEMP_FILE" <<-EOSQL

		CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';
                GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'localhost';
                FLUSH PRIVILEGES ;

                CREATE DATABASE $MYSQL_DATABASE;
                USE prueba;
                CREATE TABLE $MYSQL_DATABASE.ejemplo1 (nombre VARCHAR(30), edad INT);
                CREATE TABLE $MYSQL_DATABASE.ejemplo2 (nombre VARCHAR(30), edad INT);
                CREATE TABLE $MYSQL_DATABASE.ejemplo3 (nombre VARCHAR(30), edad INT);
                
               
              
	EOSQL

	# set this as an init-file to execute on startup
	set -- "$@" --init-file="$TEMP_FILE"
fi

# execute the command supplied
exec "$@"
