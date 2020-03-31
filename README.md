# PROJET 5BLOC
Documentation technique
Version : 1.0
Date : 30 /03/2020
Auteurs : Imane ARMEL, Diego DETOMASSI, Jean Paul ZOLABE, Achille FOGANG


## Objectif :
Mise en place d’une plateforme de vote décentralisée qui tirera parti des avantages de la technologie blockchain.

## Principales spécifications techniques et fonctionnelles :
-	Utilisation des technologies Ethereum/Solidity
-	Utilisation d’une plateforme web pour voter
-	La plateforme contient une liste définit la liste des candidats, une liste électorale arrêtée et une date de fin pour voter
-	Les électeurs inscrits peuvent voter pour un candidat tant que l'élection est disponible
-	Un électeur peut déléguer son vote à un membre de la liste électorale

## Technologies utilisées :
-	Blockchain Ethereum
-	Solidity
-	Truffle
-	Ganache
-	Metamask
-	Web3js

## Procédures de déploiement

### 1-	Installations des dépendances :
Un certain nombre de dépendances est nécessaire pour le déploiement et l’exécution de l’application.
a-	NPM : https://nodejs.org
Télécharger et installer une version récente de Node.js, de préférence Node.js 8+ (10.x.x dans notre cas). Après le téléchargement, exécuter l’exe. Vérifier à travers la commande suivante s’il a bien été installé :

``
$ node -v
``

b-	Truffle : https://www.trufflesuite.com/truffle
Truffle : est un Framework qui permet de développer des applications décentralisées sur la blockchain Ethereum. Il fournit une suite d'outils qui nous permettent d'écrire des smart contrat avec le langage de programmation Solidity. Il nous permet également de tester nos smart contrats et de les déployer sur la blockchain. Pour l’installation, exécuter la commande suivante : 
``
$ npm install -g truffle
``

c-	Ganache : http://truffleframework.com/ganache/
Ganache : est une technologie qui nous permet de mettre en place une blockchain Ethereum en local sur notre poste de travail dans le but de tester ou déployer notre dApp. Apres téléchargement, installer de manière classique.

d-	Metamask
Metamask est une extension de google chrome qui permet aux utilisateurs d’avoir accès à la blockchain à travers un wallet et sans avoir à se constituer en node. Installation à faire à partir du store des extensions de google chrome.


### 2-	Déploiement 
Après l’installation des dépendances nécessaire, vous pouvez cloner le projet :
a-	 ``
    $ git clone https://github.com/jpzolabe/5bloc_project
    ``


b-	``
   $ cd 5bloc_project
   $ npm install
   ``

c-	Démarrer Ganache, déjà installé sur votre poste de travail.

d-	 
    `` $ truffle migrate –reset
    ``


e-	Configurer Metamask : https://www.youtube.com/watch?v=ZIGUC9JAAw8
-	Connectez le Metamask à Ganache.
-	Importez les comptes fournis


f-	Exécuter l’application, et voilà !
 ``
 $ npm run dev
 ``



