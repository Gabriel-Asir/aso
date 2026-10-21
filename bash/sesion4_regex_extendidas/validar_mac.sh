#!/bin/bash

if [[ $1 =~ ^([0-9a-fA-F]{2}[:-]){5}[0-9a-fA-F]{2}$ ]]; then
    echo "$1 es una MAC válida"
else
    echo "$1 no es una MAC válida"
fi
