<div class="themes">
{foreach $themes as $theme}
<div class="row theme-item">
    <div class="col-xs-8 theme-preview" style='background-image: url({$theme.preview})'>
    </div>
    <div class="col-xs-4 theme-description text-center">
        <h3>{$theme.name}</h3>
        <p><a href="{$theme.author.url}">{$theme.author.name}</a></p>
        <p>
            <a href="{$theme.download}" class="btn btn-black">Download</a>
        </p>
    </div>
</div>
{/foreach}
</div>
