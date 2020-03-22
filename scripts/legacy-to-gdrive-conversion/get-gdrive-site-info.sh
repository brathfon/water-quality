# this was run in the water-quality-data repository to create lists of the sitename information
cat Hui\ o\ ka\ Wai\ Ola\ Data\ Entry\ -\ Team\ Olowalu.tsv | awk -F"\t" 'BEGIN {OFS = "\t"} {print $12, $14, $15}' | sort | uniq > ~/development/water-quality/legacy-to-gdrive/scripts/temp-for-legacy-to-gdrive/olowalu-site-info.txt
cat Hui\ o\ ka\ Wai\ Ola\ Data\ Entry\ -\ Team\ Polanui.tsv | awk -F"\t" 'BEGIN {OFS = "\t"} {print $12, $14, $15}' | sort | uniq > ~/development/water-quality/legacy-to-gdrive/scripts/temp-for-legacy-to-gdrive/polanui-site-info.txt
cat Hui\ o\ ka\ Wai\ Ola\ Data\ Entry\ -\ Team\ R2RN.tsv | awk -F"\t" 'BEGIN {OFS = "\t"} {print $12, $14, $15}' | sort | uniq > ~/development/water-quality/legacy-to-gdrive/scripts/temp-for-legacy-to-gdrive/r2rn-site-info.txt
cat Hui\ o\ ka\ Wai\ Ola\ Data\ Entry\ -\ Team\ R2RS.tsv | awk -F"\t" 'BEGIN {OFS = "\t"} {print $12, $14, $15}' | sort | uniq > ~/development/water-quality/legacy-to-gdrive/scripts/temp-for-legacy-to-gdrive/r2rs-site-info.txt
