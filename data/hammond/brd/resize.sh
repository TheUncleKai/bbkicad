#!/bin/bash

warning() {
	echo -e "\e[1;33m*** Warning:\e[0;0m ${1}";
}

for f in *.png
do
	warning "Resize $f"
    convert $f +profile '*' -filter Lanczos -resize 800x600\> $f
done
