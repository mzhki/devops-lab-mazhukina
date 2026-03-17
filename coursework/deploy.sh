#!/bin/bash

# Цвета для вывода
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== Деплой персонального сайта ===${NC}"

# Проверка, что мы в правильной папке
if [ ! -f "mkdocs.yml" ]; then
    echo -e "${RED}Ошибка: Запустите скрипт из папки с mkdocs.yml${NC}"
    exit 1
fi

# Добавление изменений
echo -e "${GREEN}1. Добавляем файлы в Git...${NC}"
git add .

# Коммит
echo -e "${GREEN}2. Создаем коммит...${NC}"
read -p "Введите сообщение для коммита: " commit_message
git commit -m "$commit_message"

# Пуш на GitHub
echo -e "${GREEN}3. Отправляем на GitHub...${NC}"
git push origin main

# Деплой на GitHub Pages
echo -e "${GREEN}4. Публикуем на GitHub Pages...${NC}"
python -m mkdocs gh-deploy

echo -e "${GREEN}=== Готово! Сайт опубликован ===${NC}"