#!/bin/bash
cd /my_data
su postgres -c psql < CreateDatabaseMaster.sql
PGPASSWORD=master_owner psql -d test_master -U master_owner -h localhost < CreateMaster.sql

