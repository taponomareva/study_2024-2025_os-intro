#!/bin/bash

# Проверка корректности аргументов
if [ $# -ne 2 ]; then
    echo "Использование: $0 <расширение_файла> <путь_к_директории>"
    echo "Пример: $0 .txt /home/user/documents"
    exit 1
fi

extension="$1"
directory="$2"

# Проверка существования директории
if [ ! -d "$directory" ]; then
    echo "Ошибка: Директория не найдена: $directory"
    exit 1
fi

# Подсчёт количества файлов с заданным расширением
count=$(find "$directory" -type f -name "*$extension" | wc -l)

# Вывод результата
echo "Файлов с расширением $extension в каталоге $directory: $count"
