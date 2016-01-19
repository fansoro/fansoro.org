<div class="navbar navbar-default" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="{Url::getBase()}/ru"><img src="{Url::getBase()}/public/assets/img/{if Url::getUriSegment(0) == 'ru'}{if Url::getUriSegment(1) == ''}fansoro-logo-white.png{else}fansoro-logo.png{/if}{else}{if Url::getUriSegment(0) == ''}fansoro-logo-white.png{else}fansoro-logo.png{/if}{/if}" width="330" alt="Fansoro — simple but powerful flat-file CMS"></a>
		</div>
		<div class="collapse navbar-collapse">
            {set $slug = Url::getUriSegment(1)}
            <ul class="nav navbar-nav pull-right">
                {*<li {if $slug == 'blog'} class="active" {/if}><a href="{Url::getBase()}/ru/blog">Блог</a></li>*}
                <li class="dropdown{if $slug == 'download'} active{/if}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Скачать <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="{Url::getBase()}/ru/download">Fansoro</a></li>
                        <li><a href="{Url::getBase()}/ru/download/plugins">Плагины</a></li>
                        <li><a href="{Url::getBase()}/ru/download/themes">Темы</a></li>
                    </ul>
                </li>
                <li class="dropdown{if $slug == 'documentation'} active{/if}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Поддержка <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="http://forum.fansoro.org">Форум</a></li>
                        <li><a href="{Url::getBase()}/ru/documentation">Документация</a></li>
                        <li><a href="https://github.com/fansoro-cms/fansoro/issues">Багтрекер</a></li>
                    </ul>
                </li>
                <li class="dropdown{if $slug == 'about'} active{/if}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">О Fansoro <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="{Url::getBase()}/ru/about/media">Медия</a></li>
                        <li><a href="{Url::getBase()}/ru/about/license">Лицензия</a></li>
                    </ul>
                </li>
            </ul>
		</div>
	</div>
	<div class="separator bottom grey hide"></div>
</div>
