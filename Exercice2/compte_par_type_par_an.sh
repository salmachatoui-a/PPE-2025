#!/bin/bash


CHEMIN="$HOME/PPE-2025/Exercice2"


echo "nombre de $1 en 2016:"
$CHEMIN/comptes_par_type.sh $1 2016
echo "nombre de $1 en 2017:"
$CHEMIN/comptes_par_type.sh $1 2017
echo "nombre de $1 en 2018:"
$CHEMIN/comptes_par_type.sh $1 2018
