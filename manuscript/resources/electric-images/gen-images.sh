#!/bin/bash

# ##########
#
# Génération des images bitmaps à partir des images SVG
# Usage : ./gen-images.sh NUMERO-CHAPITRE
#
# Ce script ne fonctionne pas sur OSX (malgré mes tentatives).
#
# Mars 2016, Nicolas Jeanmonod
#
# ##########

SCRIPT=`realpath $0`
CUR_DIR=`dirname $SCRIPT`
echo $CUR_DIR

if [[ "$OSTYPE" == darwin14 ]]; then
	shopt -s expand_aliases
	alias inkscape="/Applications/inkscape.app/Contents/Resources/bin/inkscape"
fi

inkscape -z -C atome.svg -e=atome.png -d=300
# convert -background white -flatten atome.png atome.jpg
inkscape -z -C pile-led.svg -e=pile-led.png -d=300
inkscape -z -C schema-pile-led.svg -e=schema-pile-led.png -d=300
inkscape -z -C schema-pile-res2p.svg -e=schema-pile-res2p -d=300
inkscape -z -C schema-pile-res2s.svg -e=schema-pile-res2s.png -d=300

exit 0
