#!/bin/bash

cd scripts/
for file in $(ls);
do
	if [[ $file == *.py ]];
	then
		python $file >> ../details.csv
	elif [[ $file == *.sh ]];
	then
		bash $file >> ../details.csv
	fi
done
