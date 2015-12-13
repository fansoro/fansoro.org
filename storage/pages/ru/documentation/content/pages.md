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

Для разметки страницы необходимо использовать Markdown, но так разрешается и использование HTML. Страница должна начинаться с [заголовка ]({site_url}/documentation/content/pages-headers), в которой описаны основные атрибуты страницы.


### Шорткоды доступные на странице

<table class="table">
    <thead>
        <tr><th>Название</th><th>Описание</th></tr>
    </thead>
    <tbody>
        <tr><td>{{site_url}}</td><td>Выводит url сайта</td></tr>
        <tr><td>{{block name=block-name}}</td><td>Загружает блок на страницу</td></tr>
    </tbody>
</table>
