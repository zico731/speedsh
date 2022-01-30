#!/bin/bash

###########################################################
#
#   Description : générateur de fichier à editer un script
#
#   Auteur : zico731
#
#   Date : 2022-01-30    Edité : 2022-01-30
#
############################################################


if [ $1 ]
then
        # on stocke le paramètre dans une variable
        fichier=$1
else
        # on demande le nom du fichier
        read -p "Veuillez renseigner le nom du script à créer : " fichier
fi
if [ -f $fichier ]
then
        # le fichier existe
        editor $fichier
else
	# creation du fichier

echo -e "\
#!/bin/bash\n\
\n\
###########################################################\n\
#\n\
#   Description :\n\
#\n\
#   Auteur : zico731\n\
#\n\
#   Date : $(date +"%Y-%m-%d")   Edité :\n\
#\n\
###########################################################\n\n" > $fichier
chmod +x $fichier
editor $fichier
fi

