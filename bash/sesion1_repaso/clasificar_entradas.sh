#!/bin/bash

for entrada in ~/prueba_bash/*; do

    if [ -f "$entrada" ]; then
        echo "$entrada es fichero"
    elif [ -d "$entrada" ]; then
        echo "$entrada es directorio"
    fi

done
