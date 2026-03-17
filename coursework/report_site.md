# Курсовая работа
## «Создание персонального сайта с помощью MkDocs»

---

| Поле | Значение |
|---|---|
| **University** | [ITMO University](https://itmo.ru/ru/) |
| **Faculty** | [FTMI](https://ftmi.itmo.ru/) |
| **Course** | [Введение в веб технологии](https://itmo-ict-faculty.github.io/introduction-in-web-tech/) |
| **Year** | 2025/2026 |
| **Group** | U4125 |
| **Author** | Мажукина Ирина |
| **Lab** | Lab1 |
| **Date of create** | 16.03.2026 |
| **Date of finished** | 17.03.2026 |

---

## Цель работы

Создание персонального сайта-визитки с использованием генератора статических сайтов MkDocs и публикация его на GitHub Pages.

## Этап 1: Установка и настройка окружения

1. Проверка установки Python:

```bash
python --version
Установлена версия Python 3.14.3
```
2. Установка MkDocs и темы Material:

```bash
pip install mkdocs
pip install mkdocs-material
```
3. Проверка установки:

```bash
python -m mkdocs --version
```

Этап 2: Создание проекта
1. Создание структуры проекта:

```bash
mkdir my-personal-site
cd my-personal-site
python -m mkdocs new .
```
2. Изучение структуры:

mkdocs.yml - файл конфигурации
docs/ - папка с исходными файлами
docs/index.md - главная страница

Этап 3: Настройка конфигурации (mkdocs.yml)
Создан файл конфигурации [mkdocs.yml](./coursework/mkdocs.yml)

Этап 4: Создание контента
Главная страница [index.md](./coursework/docs/index.md)
Страница "О себе" [about.md](./coursework/docs/about.md)
Страница "Проекты" [projects.md](./coursework/docs/projects.md)
Страница "Контакты" [contacts.md](./coursework/docs/contacts.md)

Этап 5: Добавление изображений
Создана структура папок для изображений:

```text
docs/
└── images/
    └── docs/
        └── photo.jpg
```

Этап 6: Локальное тестирование
Запуск локального сервера для проверки:

```bash
python -m mkdocs serve
```
Сайт доступен по адресу: http://127.0.0.1:8000

Этап 7: Публикация на GitHub Pages
Создание репозитория на GitHub:

Имя репозитория: devops-lab-mazhukina
Описание: Лабораторные работы по DevOps

Инициализация Git и первый коммит:

```bash
git init
git add .
git commit -m "Initial commit: MkDocs personal website"
```

Связь с удаленным репозиторием:

```bash
git remote add origin https://github.com/mzhki/devops-lab-mazhukina.git
git branch -M main
git push -u origin main
```

Деплой на GitHub Pages:

```bash
cd coursework
python -m mkdocs gh-deploy
```
Результаты работы

Созданный сайт содержит:
1. 4 информационные страницы
2. Адаптивный дизайн с темой Material
3. Лого
4. Система поиска по сайту
5. Лого
6. Фотография 

