#!/bin/bash

password="$1"

if [[ ${#password} -ge 12 ]]; then
    echo "Tiene al menos 12 caracteres: sí"
else
    echo "Tiene al menos 12 caracteres: no"
fi

if [[ $password =~ [0-9] ]]; then
    echo "Contiene algún dígito: sí"
else
    echo "Contiene algún dígito: no"
fi

if [[ $password =~ [A-Z] ]]; then
    echo "Contiene alguna mayúscula: sí"
else
    echo "Contiene alguna mayúscula: no"
fi

if [[ $password =~ [^a-zA-Z0-9] ]]; then
    echo "Contiene algún símbolo: sí"
else
    echo "Contiene algún símbolo: no"
fi

if grep -ixqF -- "$password" /usr/share/dict/spanish; then
    echo "No es una palabra del diccionario: no"
else
    echo "No es una palabra del diccionario: sí"
fi

#Caminas2026! es una contraseña segura si nos ceñimos a los requisitos.
#Sin embargo es muy genérica ya que usa el nombre del centro y el año actual,
#en mi opinión, aun que pase el filtro, no es una contraseña segura
