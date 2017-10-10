#!/bin/bash
cd /my_data
su postgres -c psql < CreateDatabaseSlave.sql
PGPASSWORD=slave_owner psql -d test_slave -U slave_owner -h localhost < CreateSlave.sql

