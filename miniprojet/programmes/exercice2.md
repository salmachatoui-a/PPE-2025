Après l’exercice 1 fait, on va rajouter des informations à chaque ligne, toujours
séparées par des tabulations :


1. le code HTTP de réponse à la requête
HTTP=$(curl -s -o /dev/null -w '%{http_code}' "$line")
j'ai mis cette commande dans ma boucle, -s permet mettre en sliencieux -o /dev/null permet de rediriger l'output = contenu du lien pour ne pas les avoir afficher sur mon terminal -w '%{http_code}= cela fait comprendre que je souhaite recuperer ce qu'il y a apres ce qui est ici specifié dans mes acolades, et donc recuperer le code HTTP.{}

1.1 les erreurs peuvent être corrigées


2. l’encodage de la page, s’il est présent
j'ai voulu suivre la meme logique que pour le code HTTP 
ENCODAGE=$(curl -s -o /dev/null -w '%{ text/html; charset=}' "$line")
mais ca ne marche pas.
en fait charset ce n'etait pas la bone categorie mais plutot ={content_type}
et la ca marche !
3. le nombre de mots dans la page

j'ai essaye en pousuivant echo -e " $nbligne \t ${line} \t wc -w" mais ca ne marche pas.
ensuite ; jrai compris qu'il faut que ce soit aussi stocker dans un paramettre , et pour extraire correctement le contenu d'une page web il faut utiliser lynx.

MOTS=$(lynx -dump "$line" | wc -w )
la je stock mon resultat qui va itereer a c  ens en bas de page donc ce n'est pas correct il faut que j'utilise une autre commande pour qu'elle ne comptabilise pas ces meta données. 
j'ai ajoute -nolist a -dump pour retirer la liste des liens d'une page à l'affichage. Mais, il ya toujours un probleme, ligne 6 "
lynx : accès impossible au fichier de départ https://roboty.magistry.fr/
 6       https://roboty.magistry.
fr      0"
lynx n'arrive pas a lire ce lien, j'ai essaye avec curl et cet url https://roboty.magistry.fr le message que j'ai eu =
curl: (60) SSL certificate problem: certificate has expired
More details here: https://curl.se/docs/sslcerts.html
