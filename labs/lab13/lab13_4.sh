#!/bin/bash

if [ -z "$1" ]; then
  echo "Укажите директорию для архивации"
  exit 1
fi

dir="$1"
archive_name="backup_$(date +%F).tar.gz"

# Используем find для выбора файлов изменённых за последние 7 дней
find "$dir" -type f -mtime -7 | tar -czf "$archive_name" -T -

echo "Создан архив: $archive_name"
