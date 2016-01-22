<ul class="nav nav-list">
    <li {if Url::getUriSegment(1) == 'download' && Url::getUriSegment(2) == ''} class="active"{/if}><a href="{Url::getBase()}/ru/download">Fansoro</a></li>
    <li {if Url::getUriSegment(1) == 'download' && Url::getUriSegment(2) == 'plugins'} class="active"{/if}><a href="{Url::getBase()}/ru/download/plugins">Плагины</a></li>
    <li {if Url::getUriSegment(1) == 'download' && Url::getUriSegment(2) == 'themes'} class="active"{/if}><a href="{Url::getBase()}/ru/download/themes">Шаблоны</a></li>
</ul>
{if Url::getUriSegment(2) == 'plugins'}
    <a class="btn btn-add-plugin btn-black" href="https://github.com/fansoro/plugins/blob/master/plugins-list-en.md" target="_blank">Добавить плагин</a>
{/if}
{if Url::getUriSegment(2) == 'themes'}
    <a class="btn btn-add-plugin btn-black" href="https://github.com/fansoro/fansoro-themes-catalog/blob/master/themes.yml" target="_blank">Добавить шаблон</a>
{/if}
