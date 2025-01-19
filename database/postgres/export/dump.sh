#!/bin/bash

pg_dump --file /docker-entrypoint-initdb.d/1-schemas.sql \
        --dbname $POSTGRES_DB \
        --username $POSTGRES_USER \
        --schema-only

pg_dump --file /docker-entrypoint-initdb.d/2-data.sql \
        --dbname $POSTGRES_DB \
        --username $POSTGRES_USER \
        --data-only
