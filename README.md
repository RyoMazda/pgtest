# pgtest
Playground for postgres.

## Usage
```sh
# run pg server
docker-compose up -d 

# connect to the sample database
docker exec -it pgtest_pg_1 psql -U postgres -d dvdrental

# Try your SQL there
dvdrental=# select * from actor limit 5;

# exit
\q

# Executing SQL file
docker exec pgtest_pg_1 psql -U postgres -d dvdrental -f /root/sql/01_select.sql

# Bye
docker-compose down
```

## Structure of the sample data: `dvdrental`
https://www.postgresqltutorial.com/postgresql-sample-database/

![dvdrental-er](https://sp.postgresqltutorial.com/wp-content/uploads/2018/03/dvd-rental-sample-database-diagram.png)

## Memo
### postgres commands
```sh
\l  # list databases
\c [db name]  # select a database
\d  # list everything
\dt  # list tables
\d [table name];  # show table structure
```
