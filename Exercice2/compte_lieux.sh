#!/bin/bash

CHEMIN="/home/salmach/PPE-2025/Exercice1/ann"

annee=$1
mois=$2
nb_lieux=$3

# 1. Selectionner les fichiers jusqu au mois et annee des dossier ann
# 2. Filter les occurrences de lieux
# 3. Compter chaque location
# 4. Trier
# 5. Afficher le classement des lieux les plus cites et selectionner les nb_lieux premier voulus
if [ $# -ne 3 ]
then
    echo "probleme ! "
    exit
fi


if [ ! -d $CHEMIN/$annee/$mois ]
then
    echo "$CHEMIN/$annee/$mois n'est pas un dossier"
    exit
fi

echo "nombre de lieux $3"
cat $CHEMIN/$annee/$mois/*.ann | grep Location | cut --fields=3 | sort | uniq -c | sort -n -r | head -n $nb_lieux
