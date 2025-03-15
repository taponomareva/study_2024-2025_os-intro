---
## Front matter
title: "Отчёт по лабораторной работе №5"
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

Настроить рабочую среду

# Задание

1) Добавить новый пароль
2) Установить дополнительное программное обеспечение
3) Создать собственный репозиторий

# Теоретическое введение

Менеджер паролей pass - программа, сделанная в рамках идеологии Unix. Данные хранятся в файловой системе в виде каталогов и файлов. Файлы шифруются с помощью GPG-ключа.

# Выполнение лабораторной работы

 Установка pass и gopass (рис. [-@fig:001]).

![Установка pass, passgo](image/im1.jpg){#fig:001 width=70%}

# Синхронизация с git

Сначала просматриваю список ключей, инициализирую хранилище, создаю структуру git (рис. [-@fig:002]).

![Синхронизация с git](image/im2.jpg){#fig:002 width=70%}

Создаю пароль (рис. [-@fig:003]).

![Создание пароля](image/im3.jpg){#fig:003 width=70%}

Устанавливаю дополнительное программное обеспечение (рис. [-@fig:004]).

![Программное обеспечение](image/im4.jpg){#fig:004 width=70%}

Устанавливаю шрифты (рис. [-@fig:005]).

![Шрифты](image/im5.jpg){#fig:005 width=70%}

Устанавливаю бинарный файл. Создаю собственный репозиторий. Подключаю репозиторий к системе (рис. [-@fig:006]).

![Установка бинарного файла. Создание собственного репозитория. Подключение репозитория к системе](image/im6.jpg){#fig:006 width=70%}

Извлекаю последние изменения(рис. [-@fig:007]).

![Извлечение последних изменений](image/im7.jpg){#fig:007 width=70%}

Настраиваю автоматику изменений(рис. [-@fig:008]).

![Автоматика изменений](image/im8.jpg){#fig:008 width=70%}

# Выводы

В ходе проведения лабораторной работы была настроена рабочая среда.

# Список литературы{.unnumbered}

1. [Курс на ТУИС](https://esystem.rudn.ru/course/view.php?id=113)
