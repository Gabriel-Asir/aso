#!/bin/bash

if [ $# -ne 1 ]; then 
	echo "Uso: $0 has de introducir fichero" 
	exit 1 
fi

if [ ! -f "$1" ]; then 
	echo "Error" 
	exit 1 
fi

sed '/^[[:space:]]*#/d; /^[[:space:]]*$/d' "$1"
