#!/bin/bash

# Устанавливаем имя файла для семафора
SEMAPHORE="/tmp/semaphore.lock"

# Время ожидания
t1=5
t2=3

# Функция для ожидания освобождения ресурса
wait_for_resource() {
  while [ -e "$SEMAPHORE" ]; do
    echo "Ресурс занят, ожидаем..."
    sleep $t1
  done
}

# Функция для использования ресурса
use_resource() {
  touch "$SEMAPHORE"
  echo "Ресурс используется..."
  sleep $t2
  rm -f "$SEMAPHORE"
  echo "Ресурс освобожден."
}

# Основная логика
wait_for_resource
use_resource
