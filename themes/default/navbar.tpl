<div class="navbar navbar-default" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="{$.config.site_url}"><img src="{$.config.site_url}/public/assets/img/{if Morfy::factory()->getUriSegment(0) == ''}morfy-logo-white.png{else}morfy-logo.png{/if}" height="" width="132" alt="Morfy CMS"></a>
		</div>
		<div class="collapse navbar-collapse">
            {set $slug = Morfy::factory()->getUriSegment(0)}
            <ul class="nav navbar-nav pull-right">
                <li {if $slug == 'blog'} class="active" {/if}><a href="{$.config.site_url}/blog">Blog</a></li>
                <li class="dropdown{if $slug == 'download'} active{/if}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Download <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="{$.config.site_url}/download">Morfy</a></li>
                        <li><a href="{$.config.site_url}/download/plugins">Plugins</a></li>
                        <li><a href="http://forum.morfy.org/forum/3/themes/">Themes</a></li>
                    </ul>
                </li>
                <li class="dropdown{if $slug == 'documentation'} active{/if}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Support <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="http://forum.morfy.org">Forum</a></li>
                        <li><a href="{$.config.site_url}/documentation">Documentation</a></li>
                        <li><a href="https://github.com/morfy-cms/morfy/issues">Bugtracker</a></li>
                    </ul>
                </li>
                <li class="dropdown{if $slug == 'about'} active{/if}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">About <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="{$.config.site_url}/about/logos-and-graphics">Logos and Graphics</a></li>
                        <li><a href="{$.config.site_url}/about/license">License</a></li>
                    </ul>
                </li>
            </ul>
		</div>
	</div>
</div>
