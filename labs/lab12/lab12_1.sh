#!/bin/bash

# Полный путь к скрипту
script_path=$(readlink -f "$0")
script_name=$(basename "$script_path")

# Создание директории backup в домашнем каталоге, если её нет
backup_dir="$HOME/backup"
mkdir -p "$backup_dir"

# Формирование имени архива с датой и временем
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_name="$script_name-$timestamp.tar.gz"

# Архивирование скрипта
tar -czf "$backup_dir/$backup_name" "$script_path"

# Вывод сообщения
echo "✅ Резервная копия создана: $backup_dir/$backup_name"
