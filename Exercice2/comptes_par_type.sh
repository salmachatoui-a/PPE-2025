#!/bin/bash 

CHEMIN="$HOME/PPE-2025/Exercice1/ann"

type=$1

annee=$2 

cat $CHEMIN/$annee/*.ann | grep "$type" | wc -l

