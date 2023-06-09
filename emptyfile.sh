#!/bin/bash

# проверяем, что передан аргумент - путь к директории
if [ -z "$1" ]; then
  echo "Испоьзован: $0 <путь к директории>"
  exit 1
fi

# проверяем, что директория существует
if [ ! -d "$1" ]; then
  echo "Ошибка: директория $1 не существует"
  exit 1
fi

# удаляем все файлы с расширениями .bak, .tmp и .backup в директории
find "$1" -type f \( -name '*.bak' -o -name '*.tmp' -o -name '*.backup' \) -delete

echo "Директория $1 очищена от файлов с расширениями .bak, .tmp and .backup"