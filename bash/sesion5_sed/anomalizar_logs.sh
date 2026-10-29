#!/bin/bash

if [ $# -ne 1  ]; then
	echo "Uso: $0 <fichero>"
	exit 1
fi

if [ ! -f "$1"  ]; then
	echo "Error"
	exit 1
fi

sed -E 's/([0-9]{1,3}\.){3}[0-9]{1,3}/X.X.X.X/g' "$1" > "$1.anonimo"
echo "Fichero anonimizado: $1.anonimo"
