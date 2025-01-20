#!/bin/bash

mongoexport --out /docker-entrypoint-initdb.d/mongo_db_user.json \
            --collection mongo_db_user \
            --db $MONGO_INITDB_DATABASE \
            --username $MONGO_INITDB_ROOT_USERNAME \
            --password $MONGO_INITDB_ROOT_PASSWORD \
            --authenticationDatabase admin \
            --jsonArray \
            --pretty
