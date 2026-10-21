#!/bin/bash

if [ $# -eq 0 ]; then
   exit 1
fi

if [[ $1 =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
   echo "$1 tiene formato de IP"
else
   echo "$1 no tiene formato de IP"
fi

#999.999.999.999 es un formato válido para nuestro script, sin embargo
#no es una dirección ip válida
#si quisieramos añadir la funcionalidad para que sea una IP válida
#deberíamos añadir otras condiciones
