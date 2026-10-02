#!/bin/bash

bytesUsados=$1
bytesTotales=$2

porcentaje=$((bytesUsados * 100 / bytesTotales))

if [ $porcentaje -lt 70 ]; then
    echo "OK"
elif [ $porcentaje -le 89 ]; then
    echo "AVISO"
else
    echo "CRÍTICO"
fi
