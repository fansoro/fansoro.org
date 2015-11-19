<ul class="nav nav-list">
    <li {if Url::getUriSegment(0) == 'about' && Url::getUriSegment(1) == 'media'} class="active"{/if}><a href="{Url::getBase()}/about/media">Media</a></li>
    <li {if Url::getUriSegment(0) == 'about' && Url::getUriSegment(1) == 'license'} class="active"{/if}><a href="{Url::getBase()}/about/license">License</a></li>
</ul>
