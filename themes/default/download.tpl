{extends 'base.tpl'}
{block 'content'}
	<div class="container container-content">
	    <div class="row">
	        <div class="col-md-9">
                {if Url::getUriSegment(1) == 'plugins' || Url::getUriSegment(2) == 'plugins'}
                    <div class="plugins-table">
                        {Markdown::parse(file_get_contents('https://raw.githubusercontent.com/morfy-cms/morfy-plugins-catalog/master/README.md'))}
                    </div>
				{elseif Url::getUriSegment(1) == 'themes' || Url::getUriSegment(2) == 'themes'}
					<div class="themes-table">
						{Repository::getThemes()}
					</div>
                {else}
                    {$content}
                {/if}
	        </div>
	        <div class="col-md-3 text-center">
				{if Url::getUriSegment(0) == 'ru'}
					{include 'ru/navbar/navbar-download.tpl'}
				{else}
					{include 'navbar/navbar-download.tpl'}
				{/if}
	        </div>
	    </div>
	</div>
{/block}
