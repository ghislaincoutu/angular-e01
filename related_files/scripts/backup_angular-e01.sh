#!/bin/bash
function apply_pause() {
  read -p "$*"
}
echo "Copie de sécurité des fichiers relatifs à l'application angular-e01"
apply_pause "Appuyer sur la touche [Retour] pour continuer..."

source=/var/www/html/r002/angular-e01
destination=/home/Exercices/angular-e01/related_files/publication
rm $destination/*.tar.gz
tar -czvf $destination/pub_angular-e01_`(date +%Y%m%d-%H%M)`.tar.gz $source/

source=/home/Exercices/angular-e01/
destination=/home/CopiesSecurite/angular-e01_`(date +%Y%m%d-%H%M)`.tar.gz
tar --exclude=".angular" --exclude=".git" --exclude="node_modules" -czvf $destination $source
