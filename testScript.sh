#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi

if [ ! -f $1  ]
  then
    echo "The parent class "$1 " does not exist"
    exit
fi

if [ ! -f $2 ];
  then
    echo "Class already exists"
    exit
fi
