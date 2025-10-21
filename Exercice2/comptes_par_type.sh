#!/bin/bash 

CHEMIN="$HOME/PPE-2025/Exercice1/ann"

type=$1

annee=$2

if [ $# -ne 2 ]
then
    echo "il faut deux arguments; type et année ! "
    exit
fi

if [ ! -d $CHEMIN/$annee ]
then
    echo "$CHEMIN/$annee n'est pas un dossier"
    exit
fi
cat $CHEMIN/$annee/*.ann | grep "$type" | wc -l

