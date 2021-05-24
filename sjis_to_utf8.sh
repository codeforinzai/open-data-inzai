for file in `\find ./original -type f | awk -F/ '{print $NF}'`; do
  iconv -f sjis -t utf-8 ./original/$file > ./csv/$file
  nkf -Lu --overwrite ./csv/$file
done

