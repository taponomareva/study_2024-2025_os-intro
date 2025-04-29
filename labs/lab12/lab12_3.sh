#!/bin/bash

# Аналог ls: выводит права доступа, размер и имя каждого файла в каталоге

# Устанавливаем директорию (по умолчанию текущая)
directory="${1:-.}"

# Проверяем, существует ли каталог
if [ ! -d "$directory" ]; then
    echo "Ошибка: Каталог не существует: $directory"
    exit 1
fi

echo "Содержимое каталога: $directory"
echo

# Перебираем файлы и каталоги в указанной директории
for file in "$directory"/*; do
    if [ -e "$file" ]; then
        perms=$(stat -c "%A" "$file")   # Права доступа
        size=$(stat -c "%s" "$file")    # Размер
        name=$(basename "$file")        # Имя файла
        echo "$perms  $size байт  $name"
    fi
done
