#!/bin/bash

carpeta=$1

for log in "$carpeta"/*.log; do
    warnings=$(grep -c "WARNING" "$log")
    errores=$(grep -c "ERROR" "$log")

    echo "$log -> $warnings WARNING, $errores ERROR"
done

#El script mira solamente dentro de la carpeta indicada
#Si realmente queremos una monitorización real imagino
#que sería más apropiado que mira también en subcarpetas
