# Comment utiliser un hook

## Installation

1. Téléchargez le fichier "pre-commit.sh"
2. Placez le fichier "pre-commit.sh" dans le dossier "hooks", le dossier "hooks" se trouve dans le dossier ".git"
2.1 Il est possible que votre dossier .git soit caché par défaut dans votre éditeur de code (par exemple vscode), pour le faire apparaître allez dans file > prefences > settings > tapez dans la barre de recherhe "exclude" et supprimez la ligne "**/.git"
3. Une fois le fichier "pre-commit.sh" dans votre dossier /.git/hooks, modifiez la ligne "LINTER='eslint'" par "LINTER= le nom de votre linter" 
4. Sauvegardez les modifications puis tapez cette commande dans votre cli :chmod +x .git/hooks/pre-commit
