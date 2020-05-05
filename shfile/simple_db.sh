#!/bin/bash

# O(1)
db_set () {
  echo "$1,$2" >> database
}

# O(N)
# escape is not given.
db_get() {
  grep "^$1," database | sed -e "s/$1,//" | tail -n 1
}

db_set key1 '{"name":"brown","type":"bear"}'
db_get key1

db_set key2 '{"name":"B","type":"salamander"}'
db_get key2

db_set key1 '{"name":"brown","type":"something"}'
db_get key1

