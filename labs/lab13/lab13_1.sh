#!/bin/bash

# Переменные по умолчанию
case_sensitive=""
show_line_numbers=""
input_file=""
output_file=""
pattern=""

# Парсинг аргументов
while getopts ":i:o:p:Cn" opt; do
  case $opt in
    i) input_file="$OPTARG" ;;
    o) output_file="$OPTARG" ;;
    p) pattern="$OPTARG" ;;
    C) case_sensitive="-F" ;;  # добавим -F если чувствительность к регистру
    n) show_line_numbers="-n" ;;
    \?) echo "Неверный ключ: -$OPTARG" >&2; exit 1 ;;
    :) echo "Требуется значение для -$OPTARG" >&2; exit 1 ;;
  esac
done

if [ -z "$input_file" ] || [ -z "$pattern" ]; then
  echo "Обязательно укажите -i (файл) и -p (шаблон)"
  exit 1
fi

# Формируем команду grep
grep_cmd="grep $case_sensitive $show_line_numbers \"$pattern\" \"$input_file\""

# Выполняем
result=$(eval $grep_cmd)

if [ -n "$output_file" ]; then
  echo "$result" > "$output_file"
else
  echo "$result"
fi
