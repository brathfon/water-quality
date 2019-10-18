#!/bin/bash

wq_files=/Users/bill/development/water-quality/water-quality-data
#wq_files=/Users/bill/development/water-quality/data-for-stand-alone-testing

./create-web-export-file-based.js  \
   --odir /tmp \
   --bname 3rd-quarter  \
   --gsdir  "$wq_files/gdrive-downloads/data-sessions-28-62-1-38" \
   --lfile "$wq_files/legacy-data/west-maui-legacy-data-sessions-1-27.tsv" \
   --sfile ./sites.txt  \
   --ndir  $wq_files/soest/csv-files

