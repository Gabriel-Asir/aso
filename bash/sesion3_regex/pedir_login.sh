#!/bin/bash

while true; do
    read -p "Nombre de usuario: " login

    if [[ ! "$login" =~ ^[a-z][a-z0-9]*$ ]]; then
        echo "No es válido. Debe empezar por minúscula y tener solo minúsculas o dígitos."
    else
        break
    fi
done

if grep -q "^$login:" /etc/passwd; then
    echo "El usuario $login ya existe."
else
    echo "Nombre de usuario: $login"
    echo "Para crearlo: sudo useradd -m -s /bin/bash $login"
fi
