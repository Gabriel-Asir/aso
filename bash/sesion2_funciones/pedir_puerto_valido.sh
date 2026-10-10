#!/bin/bash

pedir_puerto_valido() {
    while true; do
        read -p "Introduce un puerto TCP: " puerto

        if [[ $puerto =~ ^[0-9]+$ ]] && (( puerto >= 1 && puerto <= 65535 )); then
            break
        else
            echo "Error. Introduce otro puerto"
        fi
    done
}

pedir_puerto_valido
echo "Puerto válido recibido: $puerto"
