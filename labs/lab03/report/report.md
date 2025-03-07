---
## Front matter
title: "Отчёт по лабораторной работе №3"
subtitle: "Операционные системы"
author: "Пономарева Татьяна Александровна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Научиться оформлять отчеты с помощью легковесного языка разметки Markdown

# Задание

- Сделать отчет по предыдущей лабораторной работе в формате Markdown
- Предоставить отчет в 3-х форматах: pdf, docx, md

# Теоретическое введение

Для обработки файлов в формате Markdown будет использоваться Pandoc.

# Выполнение лабораторной работы

## Установка програмного обеспечения

Сначала устанавливаю git, потом gh (рис. [-@fig:001]).

![Установка git и gh](image/im1.jpg){#fig:001 width=70%}

## Базовая настройка git

Задаю имя и email владельца репозитория, настраиваю utf-8 в выводе сообщений git (рис. [-@fig:002]).

![Задание имени владельца и email, настройка utf-8](image/im2.jpg){#fig:002 width=70%}

## Верификация коммитов с помощью PGP
### Создание ключа

Генерирую ключ, задаю следующие параметры: RSA и RSA, размер 4096, срок действия бессрочен, имя: tanya, email: taponomareva6742@gmail.com, comment: test (рис. [-@fig:003]).

![Генерация ключа](image/im3.jpg){#fig:003 width=70%}

### Экспорт ключа

Вывожу список ключей (рис. [-@fig:004]).

![Вывод списка ключей](image/im4.jpg){#fig:004 width=70%}

Экспортирую ключ по его отпечатку (рис. [-@fig:005]).

![Экспорт ключа](image/im5.jpg){#fig:005 width=70%}

### Добавление PGP ключа в GitHub

Копирую ключ и добавляю его в настройках профиля на GitHub (рис. [-@fig:006]).

![Добавление ключа в GitHub](image/im6.jpg){#fig:006 width=70%}

## Базовая настройка git 

Задаю имя начальной ветки (master) (рис. [-@fig:007]).

![Настройка git](image/im7.jpg){#fig:007 width=70%}

## Создание ключа ssh

Создаю ключ ssh по алгоритму rsa с ключем размером 4096 бит(рис. [-@fig:008]).

![Ключ ssh](image/im8.jpg){#fig:008 width=70%}

Создаю ключ ssh по алгоритму ed25519(рис. [-@fig:009]).

![Ключ ssh](image/im9.jpg){#fig:009 width=70%}

Ключ был добавлен в GitHub (рис. [-@fig:014]).

![Добавление ключа в GitHub](image/im14.jpg){#fig:014 width=70%}

## Настройка gh

Авторизовываюсь через команду gh auth login (рис. [-@fig:010]).

![Настройка git](image/im10.jpg){#fig:010 width=70%}

## Настройка автоматических подписей коммитов git

Используя введенный email, указываю Git применять его при подписи коммитов (рис. [-@fig:011]).

![Настройка подписей коммитов git](image/im11.jpg){#fig:011 width=70%}

## Создание репозитория курса на основе шаблона

Создаю репозиторий курса на основе шаблона (рис. [-@fig:012]).

![Создание репозитория](image/im12.jpg){#fig:012 width=70%}

## Настройка каталога курса

Перехожу в каталог и удаляю лишние файлы, затем создаю необходимые каталоги, далее отправляю файлы на сервер (рис. [-@fig:013]).

![Настройка каталога курса](image/im13.jpg){#fig:013 width=70%}

# Выводы

Были получены навыки оформления отчетов в формате Markdown.

# Список литературы{.unnumbered}

1. [Курс на ТУИС](https://esystem.rudn.ru/course/view.php?id=113)
