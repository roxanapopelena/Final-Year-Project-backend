#!/bin/bash
export PGPASSWORD='node_password'

dropdb -U node_user bellacasadb
createdb -U node_user bellacasadb

psql -U node_user bellacasadb < ./bin/sql/account.sql
psql -U node_user bellacasadb < ./bin/sql/range.sql
psql -U node_user bellacasadb < ./bin/sql/colors.sql
psql -U node_user bellacasadb < ./bin/sql/models.sql
psql -U node_user bellacasadb < ./bin/sql/bathtubs.sql