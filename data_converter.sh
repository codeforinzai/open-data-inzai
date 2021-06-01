# Convert original csv
for file in `find ./original/*.csv -type f -exec basename -s .csv {} \;`; do
  # Convert character code from SJIS to UTF-8
  iconv -f sjis -t utf-8 ./original/$file.csv > ./csv/$file.csv

  # Convert line feed code to LF
  nkf -Lu --overwrite ./csv/$file.csv

  # Convert from csv to json
  csv2json -d ./csv/$file.csv ./json/tmp_$file.json
  cat ./json/tmp_$file.json | jq . > ./json/$file.json
  rm -rf ./json/tmp_*.json
done