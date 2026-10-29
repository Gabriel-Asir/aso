#!/bin/bash

if [ $# -ne 1  ]; then
	echo "Uso $0 <fichero>"
	exit 1
fi

if [ ! -f "$1"  ]; then
	echo "Error"
	exit 1
fi

sed -E 's/@(gmail|hotmail)\.com$/@alu.edu.gva.es/' "$1"
