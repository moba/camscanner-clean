#!/bin/bash 
tempfile=$(mktemp)
pdftk "$1" output $tempfile uncompress
sed -i 's/Scanned by CamScanner//g' $tempfile
pdftk $tempfile output "$2" compress
