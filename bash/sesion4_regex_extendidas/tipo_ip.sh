#!/bin/bash

ip="$1"

if [[ $ip =~ ^127\. ]]; then
    echo "$ip es una dirección loopback"

elif [[ $ip =~ ^(10\.|192\.168\.|172\.(1[6-9]|2[0-9]|3[01])\.) ]]; then
    echo "$ip es una dirección privada"

else
    echo "$ip es una dirección pública"
fi

#El rango 16-31 se comprueba con la expresion:
#(1[6-9]|2[0-9]|3[01])
#que significa que el numero ha de empezar por:
#1 seguido de los números del 6 al 9, inclusive
#2 seguidos por los números 0 al 9, inclusive
#3 seguidos por los números 0 o 1
#esto es debido a que no podemos representar más de un carácter
#por tanto usamos ' | ' para separar los distintos posibles resultados.
