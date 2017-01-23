#Fichier r.sh
#Pensez à lancer chmod 755 r.sh
#Lancez le script en faisant ./r.sh

#Suppression de la base de données + toutes les migrations
rake db:migrate:reset

#Lance la création des fixtures/données de dev
rake db:seed