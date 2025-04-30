#!/bin/bash

# Проверка аргументов
if [ $# -ne 1 ]; then
  echo "Использование: $0 <команда>"
  exit 1
fi

COMMAND=$1
MAN_PAGE="/usr/share/man/man1/$COMMAND.1.gz"

# Проверка существования файла справки
if [ -f "$MAN_PAGE" ]; then
  echo "Открытие справки по команде '$COMMAND'..."
  zless "$MAN_PAGE"
else
  echo "Справка для команды '$COMMAND' не найдена."
fi
