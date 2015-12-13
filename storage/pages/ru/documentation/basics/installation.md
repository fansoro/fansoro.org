---
title: Установка
description: Документация для разработчиков и пользователей.
template: documentation
---

## Используя (S)FTP{.margin-top-hard}

[Скачайте последнюю версию.](http://morfy.org/ru/download)  

Расспакуйте архив в новую папку на вашем компьютере и загрузите их на ваш веб-сервер используя (S)FTP клиент. После загрузки вам необходимо установить права `777` на папки:
* `cache/`
* `config/`
* `storage/`
* `themes/`
* `plugins/`

## Используя Composer

Вы можете легко установить Morfy используя Composer.  

```
composer create-project morfy-cms/morfy
```

Также вам понадобится установить библиотеки для темы Default  
```
cd /morfy/themes/default  
bower install
```
