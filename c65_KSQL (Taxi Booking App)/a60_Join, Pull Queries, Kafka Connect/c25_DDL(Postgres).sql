
-- DDL

CREATE TABLE carusers (
    username VARCHAR
  , ref SERIAL PRIMARY KEY
  );

INSERT INTO carusers (username) VALUES ('Alice');
INSERT INTO carusers (username) VALUES ('Bob');
INSERT INTO carusers (username) VALUES ('Charlie');

-- Create DDL

docker-compose exec postgres psql -U postgres -f /postgres-setup.sql

CREATE TABLE
INSERT 0 1
INSERT 0 1
INSERT 0 1

-- Select data

docker-compose exec postgres psql -U postgres -c "select * from carusers";

username | ref
----------+-----
 Alice    |   1
 Bob      |   2
 Charlie  |   3
(3 rows)