#!/bin/bash

wq_files=/Users/bill/development/water-quality/water-quality-data

#output_dir=../reports/web-export-quarterly-reports
output_dir=/tmp

./create-web-export-file-based.js  \
   --odir $output_dir \
   --bname legacy-test.after  \
   --gsdir  "$wq_files/gdrive-downloads/data-sessions-1-70w-1-45s" \
   --sfile ./sites.txt  \
   --ndir  $wq_files/soest/csv-files \


#   --inns   # this is for removing data without nutrients option

