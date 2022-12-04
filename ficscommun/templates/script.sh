#!/usr/bin/env bash
#==============================================================================
# Titre            : XXXX.sh
# Description      : 
# Auteur           : John Doe
# Date             : 00/00/201X
# Version          : 1.00    
# Utilisation      : bash XXX.sh
# Notes            : 
# Version de bash  : 5.x
#==============================================================================

set -o errexit
set -o nounset
set -o pipefail

if [[ "${TRACE-0}" == "1" ]]
then
    set -o xtrace
fi

if [[ "${1-}" =~ ^-*h(elp)?$ ]]
then
    echo 'Usage: ./script.sh arg-one arg-two

This is an awesome bash script to make your life better.

'
    exit
fi

cd "$(dirname "$0")"

main() 
{
    echo do awesome stuff
}

main "$@"
