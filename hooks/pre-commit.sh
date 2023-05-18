#!/bin/bash

# Chemin vers le linter (par exemple, eslint)
LINTER="eslint"

# Liste des fichiers à vérifier
FILES=$(git diff --cached --name-only --diff-filter=ACM "*.js" "*.jsx")

if [[ -n "$FILES" ]]; then
    # Exécute le linter sur les fichiers modifiés
    $LINTER $FILES

    # Si le linter a des erreurs, annule le commit
    if [[ $? -ne 0 ]]; then
        echo "Des erreurs de linting ont été trouvées. Annulation du commit."
        exit 1
    fi
fi

exit 0
