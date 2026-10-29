#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <dias>"
    exit 1
fi

if ! [[ "$1" =~ ^[0-9]{1,3}$ ]]; then
    echo "Error: el número ha de tener de 1 a 3 cifras"
    exit 1
fi

if [ ! -f "login.defs" ]; then
    echo "Error: no existe el archivo login.defs"
    exit 1
fi

anterior=$(sed -n '/^PASS_MAX_DAYS[[:space:]]/p' login.defs)

sed -i.bak "s/^PASS_MAX_DAYS.*/PASS_MAX_DAYS $1/" login.defs

nuevo=$(sed -n '/^PASS_MAX_DAYS[[:space:]]/p' login.defs)

echo "Antes: $anterior"
echo "Después: $nuevo"
