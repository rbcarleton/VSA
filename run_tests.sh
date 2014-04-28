#!/bin/sh
for i in `ls TestVSA*.rb`
do
 echo "Running test $i"
 ruby $i
done
