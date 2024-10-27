#!/bin/bash

# Плаксенков А.Ю ІО-25
# V = 2523 % 6 = 3


# Перезаписуємо файл, якщо там щось було та записуємо перше випадкове число. Якщо фалу не було - він створюється
echo $RANDOM > numbers.txt

# Дописуємо випадкове додатнє число у файл
for i in $(seq 1 4); do
  echo $RANDOM >> numbers.txt
done

# вивести на екран записані числа
echo "Випадкові числа:"
cat numbers.txt

# Знаходимо найменше число
min_number=$(head -n 1 numbers.txt)  # Ініціалізація мінімального значення першим числом у файлі

# Проходимо по кожному числу у файлі та знаходимо найменше
while read -r number; do
  if (( number < min_number )); then
    min_number=$number
  fi
done < numbers.txt


# Перезаписуємо файл мінімальним числом
echo "$min_number" > numbers.txt

# Вивід результату на екран
echo "Найменше число:"
cat numbers.txt