#!/bin/sh

FILE=/tmp/dvdrental.tar
if [ -f "$FILE" ]; then
    echo "$FILE already exists"
else 
    echo "downloading dvdrental.zip..."
    cd tmp
    wget https://sp.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip -O /tmp/dvdrental.zip
    unzip dvdrental.zip
    cd ..
fi

echo "create dvd rental dataset..."
psql -U postgres -c "create database dvdrental"
pg_restore -U postgres -d dvdrental -C /tmp/dvdrental.tar
exit 0
