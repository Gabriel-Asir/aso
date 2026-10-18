#!/bin/bash

contador=0

while read -r linea; do
    if [[ "$linea" =~ bash$ ]]; then
        usuario=${linea%%:*}
        echo "$usuario"
        ((contador++))
    fi
done < /etc/passwd

echo "Usuarios con bash: $contador"
