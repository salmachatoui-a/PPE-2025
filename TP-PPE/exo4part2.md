
  while = vrai = boulcer  ou faux = arreter le programme
  read prend en arg un nom de variable ( c'est une facon de lire la reponse de l'utilisateur) il le stock dans LINE

  une fois qu'on attein la fin de boucle la nouvelle boucle retrounera faux ?

  lire une ligne et stocker la ligne dans une variable.






  done repond a la boucle while "<" FichierUrl le chevron permet de ?


  Autre façon de faire sans redirection avec des pipeline :

  cat  FichiersURLS | while read -r LINE; do echo $LINE; done ''



  for on l'utilise rarement en bash exemple =
  for LINE in $(cat FICHIER.txt); do echo $LINE; done = va ressortir en comptant les espace donc un saut de ligne.

  il peu casse si on met un dossier
  exemple=
  while read -r LINE ; do echo $LINE ; done LINE/document/
  ici il affiche un mesage d'erreur , melanger a la sorie normal du programme = programme ne plante pas mais continue de tourner

  if [! -f $1 ou fichier en URL]
  then
     echo "vous devez indiquer unfichier "
     exit
fi

cette condition est interressante elle permet de casser la boucle s'il ya un probleme + expliquer à l'utilisateur ce qui ne va pas
