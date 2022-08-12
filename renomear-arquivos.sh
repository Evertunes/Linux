#!/bin/bash

read -p "Entre com o diretório: " dir
read -p "Extensão antiga: " old
read -p "Extensão nova: " new

# dir = "~/Imagens"
# old = "jpeg"
# new = "png"

IFSOLD=$IFS
IFS=$'\n'

for fo in $(eval ls ${dir}/*.${old});
do
	fn=${fo/%$old/$new}
	mv ${fo} ${fn}
	echo "Movendo $fo -> $fn ...";
done

IFS=$IFSOLD 
