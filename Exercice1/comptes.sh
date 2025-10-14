#!/bin/bash

echo "agrument donné : $1"

CHEMIN="$HOME/PPE-2025/Exercice1/ann"

echo "nombre de lieux en 2016 : "
cat $CHEMIN/2016/*/*.ann | grep "Location" | wc -l


echo "nombre de lieux en 2017 : "
cat $CHEMIN/2017/*/*.ann| grep "Location" | wc -l


echo "nombre de lieux en 2018 : " 
cat $CHEMIN/2018/*/*.ann| grep "Location" | wc -l

