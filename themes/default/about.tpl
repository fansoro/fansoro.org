{extends 'layout.tpl'}
{block 'content'}
	<div class="container container-content">
	    <div class="row">
	        <div class="col-md-9">
    	        {$content}
            </div>
	        <div class="col-md-3 text-center">
                <ul class="nav nav-list">
					<li {if Url::getUriSegment(0) == 'about' && Url::getUriSegment(1) == 'media'} class="active"{/if}><a href="{$.site.url}/about/media">Media</a></li>
                    <li {if Url::getUriSegment(0) == 'about' && Url::getUriSegment(1) == 'license'} class="active"{/if}><a href="{$.site.url}/about/license">License</a></li>
                </ul>
	        </div>
	    </div>
	</div>
{/block}
