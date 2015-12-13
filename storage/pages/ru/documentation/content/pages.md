---
title: Страницы
description: Документация для разработчиков и пользователей.
template: documentation
---

### Структура страниц и ссылок в Morfy:{.margin-top-hard}

<table class="table">
    <thead>
        <tr><th>Расположение</th><th>URL</th></tr>
    </thead>
    <tbody>
        <tr><td>storage/content/index.md</td><td>/</td></tr>
        <tr><td>storage/content/sub.md</td><td>/sub</td></tr>
        <tr><td>storage/content/sub/index.md</td><td>/sub (same as above)</td></tr>
        <tr><td>storage/content/sub/page.md</td><td>/sub/page</td></tr>
        <tr><td>storage/content/a/very/long/url.md</td><td>/a/very/long/url</td></tr>
    </tbody>
</table>


### Разметка страницы

Text files are marked up using Markdown. They can also contain regular HTML.  
At the top of text files should place a [page header]({site_url}/documentation/content/pages-headers) to specify attributes of the page.


### Шоркоды доступные на странице

<table class="table">
    <thead>
        <tr><th>Название</th><th>Описание</th></tr>
    </thead>
    <tbody>
        <tr><td>{{site_url}}</td><td>Выводит url сайта</td></tr>
        <tr><td>{{block name=block-name}}</td><td>Загружает блок на страницу</td></tr>
    </tbody>
</table>
