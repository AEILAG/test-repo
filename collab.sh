#!/bin/bash

#git clone "https://github.com/MountainMan12/team-heisenberg.git"

touch team-heisenberg.csv
cd scripts/
for file in $(ls);
do
	if [[ $file == *.py ]];
	then
		python $file >> ../team-heisenberg.csv
	elif [[ $file == *.sh ]];
	then
		bash $file >> ../team-heisenberg.csv
	elif [[ $file == *.R ]];
	then
		Rscript $file >> ../team-heisenberg.csv
	elif [[ $file == *.c ]];
	then
		g++ $file 
		./a.out >> ../team-heisenberg.csv
		rm a.out
	elif [[ $file == *.pl ]];
	then
		perl $file >> ../team-heisenberg.csv
	elif [[ $file == *.java ]];
        then
                javac $file
		fname=`echo $file | cut -d\. -f1`
		java $fname >> ../team-heisenberg.csv
	fi
done
