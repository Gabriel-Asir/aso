#!/bin/bash

configuracion=0
copias=0

echo "Ficheros de configuración:"

for fichero in /etc/*; do
    nombre=$(basename "$fichero")

    if [[ "$nombre" =~ \.conf$ ]]; then
        echo "$fichero"
        ((configuracion++))
    elif [[ "$nombre" =~ \.bak$ || "$nombre" =~ ~$ ]]; then
        ((copias++))
    fi
done

echo "Configuración: $configuracion"
echo "Copias de seguridad: $copias"
