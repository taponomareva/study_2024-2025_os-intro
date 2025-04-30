#!/bin/bash

# Длина последовательности
LENGTH=10

# Генерация случайной последовательности букв
generate_random_string() {
  local result=""
  for ((i=0; i<$LENGTH; i++)); do
    # Генерация случайной буквы
    letter=$((RANDOM % 26 + 65))  # Число от 65 до 90 (A-Z)
    result+=$(printf "\\$(printf '%03o' $letter)")
  done
  echo "$result"
}

# Вывод случайной строки
generate_random_string
