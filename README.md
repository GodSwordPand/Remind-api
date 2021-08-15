# Remind-api


## Prérequis

```
php: >= 7.4.1
mysql >= 8.0
symfony >= 5.2.6
composer >= 1.10.15
openssl >= 1.1.1
```


## Installation

#### Importer

En premier lieu, importer le projet :

``` bash
git clone https://gitlab.sio.lyceefulbert.fr/vieira/remind-api.git
```

#### Installer

``` bash
cd remind-api
composer install
```

#### Générer keypair

Ensuite vous devez générer les clés privé/public jwt pour verifier/signer les jetons.

``` bash
php bin/console lexik:jwt:generate-keypair
```

#### Configuration de la Database

Adapter le fichier __.env__ en fonction de la configuration de votre base de donnée.
```
# .env
DATABASE_URL="mysql://root:@127.0.0.1:3306/remind?serverVersion=8.0"
```

Ensuite dans la console :
``` bash
# Création de la base de donnée
php bin/console doctrine:database:create

# Création de la migration du schémas de la base de données
php bin/console make:migration

# Importation des table de la base de donnée
php bin/console doctrine:migrations:migrate
```

#### Ajout de données fictive

Un script avec de fausses données vous est fournit pour tester l'api.

Par le biai de phpmyadmin ou d'un autre gestionnaire de base de données inserer le script __remind-data.sql__ .


## Démarrage

Tout est prêt pour lancer l'api.
```bash
symfony serve
```


## Test

Avec un logiciel comme Posteman ou Insomnia il est possible de tester l'api.

### Avec Insomnia

Importer dans Insomnia un collection depuis le fichier Insomnia.json situé à la racine du projet.

Un identifiant issu du jeu de données en test vous est deja preparé dans la requete Login du dossier Auth.
