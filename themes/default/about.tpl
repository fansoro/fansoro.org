{extends 'base.tpl'}
{block 'content'}
	<div class="container container-content">
	    <div class="row">
	        <div class="col-md-9">
    	        {$content}
            </div>
	        <div class="col-md-3 text-center">
				{if Url::getUriSegment(0) == 'ru'}
					{include 'ru/navbar/navbar-about.tpl'}
				{else}
					{include 'navbar/navbar-about.tpl'}
				{/if}
	        </div>
	    </div>
	</div>
{/block}
