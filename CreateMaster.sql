DROP TABLE IF EXISTS films;
CREATE TABLE films (
    code        char(5) CONSTRAINT firstkey PRIMARY KEY,
    title       varchar(40) NOT NULL,
    did         integer NOT NULL,
    date_prod   date,
    kind        varchar(10),
    len         interval hour to minute
);

DROP PUBLICATION IF EXISTS all_tables;
CREATE PUBLICATION all_tables FOR ALL TABLES;

INSERT INTO FILMS VALUES('asd','Titelillo', 12, NULL, NULL, NULL);


