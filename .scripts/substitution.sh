#!/bin/bash

SOURCE=$1
TARGET=$2

for i in `grep -ir  "$SOURCE" ./replacement/* | awk '{print $1}'| cut -d ":" -f1`; do
	sed -i "s/$SOURCE/$TARGET/" $i
	echo $i
done
