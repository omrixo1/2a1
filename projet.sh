#!/bin/bash

source script.sh


while getopts "m:l:h:k:p:s:a:" opt
do
yad --text "si vous vouler tapet -menu pour afficher menu"

case $opt in
 m) var=$OPTARG
   ;;
 l) var=$OPTARG
   ;;
 h) var=$OPTARG
   ;;
 l) var=$OPTARG
   ;;
 k) var=$OPTARG
   ;;
 s) var=$OPTARG
   ;;
 a) var=$OPTARG
   ;;
esac
done
case $var in
    enu) menu
    ;;
    mem) lmem
    ;;
    elp) helps
     ;;
    part) lpart    
     ;;
    ernel) lkernel
      ;;
     ave) save
     ;;
     fficher) afficher
     ;;
esac

