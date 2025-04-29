#!/bin/bash

./lab13_2
status=$?

case $status in
  1) echo "Число положительное." ;;
  2) echo "Число отрицательное." ;;
  3) echo "Число равно нулю." ;;
  *) echo "Неизвестный код завершения: $status" ;;
esac
