#!/bin/bash

git clone "https://github.com/MountainMan12/test-repo.git" "/home/$(whoami)/team-heisenberg"

touch details.csv
cd scripts/
for file in $(ls);
do
	if [[ $file == *.py ]];
	then
		python $file >> ../details.csv
	elif [[ $file == *.sh ]];
	then
		bash $file >> ../details.csv
	elif [[ $file == *.R ]];
	then
		Rscript $file >> ../details.csv
	fi
done
