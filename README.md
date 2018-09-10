Suivez les étapes ci-dessous pour télécharger, installer et exécuter ce projet.

## Dépendances
Installez ces prérequis
- NPM: https://nodejs.org
- Truffe: https://github.com/trufflesuite/truffle
- Ganache: http://truffleframework.com/ganache/
- Métamask: https://metamask.io/


## Etape 1. Cloner le projet


## Etape 2. Installez les dépendances
`` `
$ cd élection
$ npm install
`` `
## Étape 3. Démarrer Ganache
Ouvrez le client GUI Ganache que vous avez téléchargé et installé. Cela démarrera votre instance locale de blockchain. Voir le tutoriel vidéo gratuit pour une explication complète.


## Étape 4. Compiler et déployer un contrat intelligent
`$ truffle migrate --reset`
Vous devez migrer le contrat électoral intelligent à chaque redémarrage de votre ganache.

## Étape 5. Configurer Metamask
- Débloquer Metamask
- Connectez metamask à votre blockchain Etherum locale fournie par Ganache.
- Importer un compte fourni par ganache.

## Étape 6. Exécuter l'application frontale
`$ npm run dev`
Visitez cette URL dans votre navigateur: http: // localhost: 3000

