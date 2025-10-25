Dans le dépôt vous trouverez le dossier "mini-projet" avec le code suivant :

fichier=$1

while read -r line;
do
echo ${line};
done < $fichier;

Questions :

1. Pourquoi ne pas utiliser cat ?
Parce que contrairement au code ci dessus qui permet de lire ligne par ligne le contenu de urls/fr.txt cat va afficher tout le conetenu.

2. Comment transformer "urls/fr.txt" en paramètre du script ?
creer une variable fichier =$1 , et le generaliser.

2.1 Valider l’argument : ajouter le code nécessaire pour s’assurer qu’on donne bien
un argument au script, sinon on s’arrête

ajouter cette condition:
if [ $# -ne 1 ]
then
    echo "il faut un argument ! "
    exit
fi

3. Comment afficher le numéro de ligne avant chaque URL (sur la même ligne) ?
• Bien séparer les valeurs par des tabulations

echo $nbligne ${line} ;
nbligne=$( expr $nbligne + 1);
echo -e "Lire les man\
