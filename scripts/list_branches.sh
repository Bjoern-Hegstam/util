#!/usr/bin/env bash

for D in `find -maxdepth 1 -type d` 
do
	if [ -d "$D/.git" ]; then
		echo -n "$D: "
		( cd $D && git rev-parse --abbrev-ref HEAD 2> /dev/nul )
	fi
done
