#!/bin/bash

fichero=${1:-/etc/login.defs}

if [ ! -f "$fichero" ]; then
    echo "Error: el fichero $fichero no existe."
    exit 1
fi

totales=0
utiles=0

while IFS= read -r linea || [[ -n "$linea" ]]; do
    ((totales++))

    if [[ "$linea" =~ ^[[:space:]]*$ || "$linea" =~ ^[[:space:]]*# ]]; then
        continue
    fi

    echo "$linea"
    ((utiles++))

done < "$fichero"

echo "Líneas totales: $totales"
echo "Líneas útiles: $utiles"

#PASS_MAX_DAYS 99999 hace que la vigencia de una contraseña sea de
#99999 días, unos 273 años, es decir, de muy larga duración.
#No me parece seguro, ya que puede ser una contraseña fácil o sensible
#y también convendría ir cambiandola cada cierto tiempo.
