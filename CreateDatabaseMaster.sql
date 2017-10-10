DROP DATABASE IF EXISTS test_master;
DROP ROLE IF EXISTS master_owner;
CREATE USER master_owner WITH SUPERUSER REPLICATION PASSWORD 'master_owner';
CREATE DATABASE test_master OWNER=master_owner;

