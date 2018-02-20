#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi

if [ ! -f ${1}.h  ]
  then
    echo "The parent class "$1 " does not exist"
    exit
fi

if [  -f ${2}.h ];
  then
    echo "Class "$2" already exists"
    exit
fi

touch ${2}.h

touch ${2}.cpp

echo "#pragma once #include <iostream> class "$2": public "$1" { public: "$2"(); }" >> ${2}.h

echo '#include "' $1 '.h" '$2'::'$2'(){}' >> ${2}.cpp

git add .

git commit -m "added new class $2"

echo "added new class " $2 " today \\n" >> work.txt


