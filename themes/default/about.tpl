{extends 'layout.tpl'}
{block 'content'}
	<div class="container container-content">
	    <div class="row">
	        <div class="col-md-9">
    	        {$content}
            </div>
	        <div class="col-md-3 text-center">
                <ul class="nav nav-list">
                    <li {if Morfy::factory()->getUriSegment(0) == 'about' && Morfy::factory()->getUriSegment(1) == 'logos-and-graphics'} class="active"{/if}><a href="{$.config.site_url}/about/logos-and-graphics">Logos and Graphics</a></li>
                    <li {if Morfy::factory()->getUriSegment(0) == 'about' && Morfy::factory()->getUriSegment(1) == 'license'} class="active"{/if}><a href="{$.config.site_url}/about/license">License</a></li>
                </ul>
	        </div>
	    </div>
	</div>
{/block}
