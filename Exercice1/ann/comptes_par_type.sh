#!/bin/bash 

CHEMIN="$HOME/Journal-de-bord-individuel-PPE/Exercice1/ann"

type=$1

annee=$2 

cat $CHEMIN/$annee/*.ann | grep "$type" | wc -l

