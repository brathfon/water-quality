#!/bin/bash

wq_files=/Users/bill/development/water-quality/water-quality-data

output_dir=../reports/web-export-quarterly-reports

./create-web-export-file-based.js  \
   --odir $output_dir \
   --bname 4th-quarter.1  \
   --gsdir  "$wq_files/gdrive-downloads/data-sessions-28-66w-1-42s" \
   --lfile "$wq_files/legacy-data/west-maui-legacy-data-sessions-1-27.tsv" \
   --sfile ./sites.txt  \
   --ndir  $wq_files/soest/csv-files \


#   --inns   # this is for removing data without nutrients option

