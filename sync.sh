rsync --recursive --info=progress2,name1 --checksum --compress --delete-after \
  --exclude='.DS_Store' \
  --exclude='._*' \
  marcin.floryan.se/ klint.floryan.se:/srv/www/sites/floryan.se/marcin/