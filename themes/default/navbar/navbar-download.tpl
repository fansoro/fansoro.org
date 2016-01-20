<ul class="nav nav-list">
    <li {if Url::getUriSegment(0) == 'download' && Url::getUriSegment(1) == ''} class="active"{/if}><a href="{Url::getBase()}/download">Fansoro</a></li>
    <li {if Url::getUriSegment(0) == 'download' && Url::getUriSegment(1) == 'plugins'} class="active"{/if}><a href="{Url::getBase()}/download/plugins">Plugins</a></li>
    <li {if Url::getUriSegment(0) == 'download' && Url::getUriSegment(1) == 'themes'} class="active"{/if}><a href="{Url::getBase()}/download/themes">Themes</a></li>
</ul>
{if Url::getUriSegment(1) == 'plugins'}
    <a class="btn btn-add-plugin btn-black" href="https://github.com/fansoro/plugins/blob/master/plugins-list-en.md" target="_blank">Add a plugin</a>
{/if}
{if Url::getUriSegment(1) == 'themes'}
    <a class="btn btn-add-plugin btn-black" href="https://github.com/fansoro/fansoro-themes-catalog/blob/master/themes.yml" target="_blank">Add a theme</a>
{/if}
