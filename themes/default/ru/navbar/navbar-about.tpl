<ul class="nav nav-list">
    <li {if Url::getUriSegment(1) == 'about' && Url::getUriSegment(2) == 'media'} class="active"{/if}><a href="{Url::getBase()}/ru/about/media">Медиа</a></li>
    <li {if Url::getUriSegment(1) == 'about' && Url::getUriSegment(2) == 'license'} class="active"{/if}><a href="{Url::getBase()}/ru/about/license">Лицензия</a></li>
</ul>
