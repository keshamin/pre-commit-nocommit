#!/bin/sh

# This pre-commit hook will prevent you from committing any line (or filename) containing
# the string NOCOMMIT. Use that tag in comments around source code you want to avoid
# accidentally committing, like temporary IP addresses or debug printfs.

if git diff --cached | grep -iE '(#|(\/\/))\s?nocommit'; then
    echo
    echo "Adding line containing NOCOMMIT"
    exit 1
fi
