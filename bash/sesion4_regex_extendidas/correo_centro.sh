#!/bin/bash

if [[ $1 =~ ^[a-z0-9._-]+@(edu\.gva\.es|alu\.edu\.gva\.es)$ ]]; then
    if [[ $1 =~ @edu\.gva\.es$ ]]; then
        echo "$1 es una cuenta de profesorado"
    else
        echo "$1 es una cuenta de alumnado"
    fi
else
    echo "$1 no es una cuenta educativa"
fi
