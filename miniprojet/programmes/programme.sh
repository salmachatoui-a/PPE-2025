#!/bin/bash

fichier=$1
nbligne=1

if [ $# -ne 1 ]
then
    echo "il faut un argument ! "
    exit
fi


while read -r line ;
do
HTTP=$(curl -s -o /dev/null -w '%{http_code}' "$line")
ENCODAGE=$(curl -s -o /dev/null -w '%{content_type}' "$line")
MOTS=$(lynx -dump -nolist "$line" |wc -w );

echo -e " $nbligne \t ${line}\t $HTTP \t $ENCODAGE \t $MOTS" | >> resultat.tsv ;

nbligne=$( expr $nbligne + 1);
done < $fichier;

