# extracteur-demonstration
Démonstrateur d'un extracteur de données Pégase
## Prérequis
* Disposer de docker-compose pou pouvoir lancer la base postgres et pgadmin 
  * Pour l'installer : https://docs.docker.com/compose/install/
  * NB : Cet extracteur a uniquement été testé sur un environnement Linux
* Talend ????
* JAVA ????
## Utilisation
### Postgres
* expliquer comment lancer compose + accéder à pgadmin + configurer une première fois la cnx à la base ????
### Lancer extraction
* ????

LANCER L'EXTRACTION

Via la ligne de commande

Pour lancer l'extraction de données en la ligne de commande, il faut récupérer l'archive à l'endroit suivant : "??????"
Une fois l'archive téléchargée et décompréssée, vous devez configurer le job par rapport à votre environnement.

Pour se faire vous devez modifier le fichier Default.properties : [dossier d'extraction]\[nom du job]\[nom du projet]\[nom du job]_[version]\contexts\Default.properties
Exemple : ~\extractionEtablissementParametres_0.1\extractionEtablissementParametres\projet_test\extractionetablissementparametres_0_1\contexts\default.properties

Ouvrez-le et renseignez les champs nécessaires.
Enregistrer et fermer le fichier.

Avec un terminal déplacez-vous dans le dossier : [dossier d'extraction]\[nom du job]\
Lancez le script correspondant à votre environnement :
	- [nom du job]_run.sh pour linux
	- [nom du job]_run.bat pour windows


Via l'interface Talend

Installation de Talend ?
procédure pour accéder à gitlab ou github ?

Importer le projet via GIT
Dans cette partie nous allons procéder en 2 étapes : 
1) la création d'un dossier qui servira uniquement à rapatrier le projet Talend depuis GIT (peut être supprimé par la suite)
2) l'import du projet dans Talend

1.1) Lancez un terminal et déplacez vous dans le dossier qui contiendra le projet rapatrié.
tapez les commandes suivantes : 
	- git init 			#permet d'initialiser le dossier comme étant un repository GIT
	- git clone https://gitlab.pc-scol.fr/gsaint-pierre/talend-git.git			# rapatrie en local le projet

1.2) Démarrez Talend.
Lors du lancement, vous devez sélectionner un dossier qui servira de workspace. 
Choisissez le répertoire voulu et validez.
Ensuite viens l'étape de la sélection du projet.
A cette étape, il faut sélectionner "Importer un projet existant".
Déplacez-vous dans le repertoire où vous avez rapatrié le projet GIT, sélectionnez sur le dossier téléchargé et validez.
Nommez le projet et validez.
Talend devrait importer le projet rapatrié dans le workspace.


2) lancement du job
Dépliez le répertoire "Job" dans l'arborescence de gauche et double cliquez sur le job pour l'afficher dans la fenetre principale.
Cliquez sur l'onglet "Context".
Dans la colonne, "Value", entrez les valeurs correspondantes aux différents paramètres.
Cliquez sur l'onglet "Exécuter (nom_du_job)"
Vous pouvez suivre l'exécution du job dans la console de l'onglet.



MISE A JOUR DU PROJET

Lorsque de nouveaux jobs seront disponibles, il est possible de mettre à jour le projet sans avoir à répéter toutes les étapes précédentes.

Pour cela, ouvrez un terminal et déplacez-vous dans le workspace de Talend.
Tapez : git pull
Cela forcera la synchronisation de votre workspace avec le projet GIT. 
En cas de mise à jour, des fichiers peuvent être modifiés, ajoutés ou supprimés.

Pensez à redémarrer Talend pour prendre en compte les changements. La prise en compte des modifications n'est pas automatique.



PARTAGE DE CONNAISSANCE / MISE A DISPOSITION DE NOUVEAU JOB PAR L'UTILISATEUR

A voir par la suite.
