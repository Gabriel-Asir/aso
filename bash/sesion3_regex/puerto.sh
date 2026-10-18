#!/bin/bash

puerto=$1

if ! [[ "$puerto" =~ ^[0-9]+$ ]]; then
    echo "$puerto no es un número"
    exit 1
fi

if [ "$puerto" -lt 1 ] || [ "$puerto" -gt 65535 ]; then
    echo "$puerto está fuera de rango (1-65535)"
else
    echo "$puerto es un puerto válido"
fi

