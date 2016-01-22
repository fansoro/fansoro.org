---
title: Установка
description: Документация для разработчиков и пользователей.
template: documentation
---

## Используя (S)FTP{.margin-top-hard}

[Скачайте последнюю версию.](http://fansoro.org/ru/download)  

Расспакуйте архив в новую папку на вашем компьютере и загрузите их на ваш веб-сервер используя (S)FTP клиент. После загрузки вам необходимо установить права `777` на папки:
* `cache/`
* `config/`
* `storage/`
* `themes/`
* `plugins/`

## Используя Composer

Вы можете легко установить Fansoro используя Composer.  

```
composer create-project fansoro/fansoro
```

Также вам понадобится установить библиотеки для темы Default  
```
cd /fansoro/themes/default  
bower install
```
