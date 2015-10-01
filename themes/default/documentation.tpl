{extends 'layout.tpl'}
{block 'content'}
	<div class="container container-content">

		<div class="row">
		    <div class="col-md-9">
		        {$content}
		    </div>
		    <div class="col-md-3">

		        <div class="panel-group navigation-docs" id="accordion">
		            <div class="panel panel-default">
		                <div class="panel-heading" id="headingOne">
		                    <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" href="#collapseOne">Basics</a></h4>
		                </div>

		                <div class="panel-collapse collapse {if Morfy::factory()->getUriSegment(1) == 'basics' || Morfy::factory()->getUriSegment(1) == ''}in{/if}" id="collapseOne">
		                    <div class="panel-body">
		                        <ul class="nav nav-list">
		                            <li {if Morfy::factory()->getUriSegment(2) == 'requirements'}class="active"{/if}>
		                                <a href="{$.config.site_url}/documentation/basics/requirements">Requirements</a>
		                            </li>

		                            <li {if Morfy::factory()->getUriSegment(2) == 'installation'}class="active"{/if}>
		                                <a href="{$.config.site_url}/documentation/basics/installation">Installation on a Web Server</a>
		                            </li>

		                            <li {if Morfy::factory()->getUriSegment(2) == 'upgrade'}class="active"{/if}>
		                                <a href="{$.config.site_url}/documentation/basics/upgrade">Upgrading to the Latest Version</a>
		                            </li>

		                            <li {if Morfy::factory()->getUriSegment(2) == 'migrating'}class="active"{/if}>
		                                <a href="{$.config.site_url}/documentation/basics/migrating">Moving Morfy or Migrating Hosts</a>
		                            </li>

		                        </ul>
		                    </div>
		                </div>
		            </div>

		            <div class="panel panel-default">
		                <div class="panel-heading" id="headingTwo">
		                    <h4 class="panel-title"><a class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapseTwo">Content</a></h4>
		                </div>

		                <div class="panel-collapse collapse {if Morfy::factory()->getUriSegment(1) == 'content'}in{/if}" id="collapseTwo">
		                    <div class="panel-body">
		                        <ul class="nav nav-list">
		                            <li {if Morfy::factory()->getUriSegment(2) == 'pages'}class="active"{/if}><a href="{$.config.site_url}/documentation/content/pages">Pages</a></li>
		                            <li {if Morfy::factory()->getUriSegment(2) == 'pages-headers'}class="active"{/if}><a href="{$.config.site_url}/documentation/content/pages-headers">Headers</a></li>
		                            <li {if Morfy::factory()->getUriSegment(2) == 'markdown'}class="active"{/if}><a href="{$.config.site_url}/documentation/content/markdown">Markdown</a></li>
		                        </ul>
		                    </div>
		                </div>
		            </div>

		            <div class="panel panel-default">
		                <div class="panel-heading" id="headingThree">
		                    <h4 class="panel-title"><a class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapseThree">Themes</a></h4>
		                </div>

		                <div class="panel-collapse collapse {if Morfy::factory()->getUriSegment(1) == 'themes'}in{/if}" id="collapseThree">
		                    <div class="panel-body">
		                        <ul class="nav nav-list">
									<li {if Morfy::factory()->getUriSegment(2) == 'theme-installation'}class="active"{/if}>
		                                <a href="{$.config.site_url}/documentation/themes/theme-installation">Themes Installation</a>
		                            </li {if Morfy::factory()->getUriSegment(2) == 'theme-basics'}class="active"{/if}>
		                            <li>
		                                <a href="{$.config.site_url}/documentation/themes/theme-basics">Theme Basics</a>
		                            </li>
		                            <li {if Morfy::factory()->getUriSegment(2) == 'theme-variables'}class="active"{/if}>
		                                <a href="{$.config.site_url}/documentation/themes/theme-variables">Theme Variables</a>
		                            </li>
		                        </ul>
		                    </div>
		                </div>
		            </div>

		            <div class="panel panel-default">
		                <div class="panel-heading" id="heading4">
		                    <h4 class="panel-title"><a class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapse4">Plugins</a></h4>
		                </div>

		                <div class="panel-collapse collapse {if Morfy::factory()->getUriSegment(1) == 'plugins'}in{/if}" id="collapse4">
		                    <div class="panel-body">
		                        <ul class="nav nav-list">
									<li {if Morfy::factory()->getUriSegment(2) == 'plugins-installation'}class="active"{/if}>
		                                <a href="{$.config.site_url}/documentation/plugins/plugins-installation">Plugins Installation</a>
		                            </li>
		                        </ul>
		                    </div>
		                </div>
		            </div>

		            <div class="panel panel-default">
		                <div class="panel-heading" id="heading5">
		                    <h4 class="panel-title"><a class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapse5">Advanced</a></h4>
		                </div>

		                <div class="panel-collapse collapse {if Morfy::factory()->getUriSegment(1) == 'advanced'}in{/if}" id="collapse5">
		                    <div class="panel-body">
		                        <ul class="nav nav-list">
		                        	<li {if Morfy::factory()->getUriSegment(2) == 'constants'}class="active"{/if}>
		                                <a href="{$.config.site_url}/documentation/advanced/constants">Constants</a>
		                            </li>
		                        </ul>
		                    </div>
		                </div>
		            </div>
		        </div>

		    </div>
		</div>

	</div>
{/block}
