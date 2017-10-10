
DROP TABLE IF EXISTS films;
CREATE TABLE films (
    code        char(5) CONSTRAINT firstkey PRIMARY KEY,
    title       varchar(40) NOT NULL,
    did         integer NOT NULL,
    date_prod   date,
    kind        varchar(10),
    len         interval hour to minute
);

DROP TABLE IF EXISTS distributors;
CREATE TABLE distributors (
     did    integer PRIMARY KEY,
     name   varchar(40) NOT NULL CHECK (name <> '')
);

DROP SUBSCRIPTION IF EXISTS test_sub; 
CREATE SUBSCRIPTION test_sub CONNECTION 'host=master port=5432 dbname=test_master user=master_owner password=master_owner' PUBLICATION all_tables;


