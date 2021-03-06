<div class="panel-group navigation-docs" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading" id="headingOne">
            <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" href="#collapseOne">Basics</a></h4>
        </div>

        <div class="panel-collapse collapse {if Url::getUriSegment(1) == 'basics' || Url::getUriSegment(1) == ''}in{/if}" id="collapseOne">
            <div class="panel-body">
                <ul class="nav nav-list">
                    <li {if Url::getUriSegment(2) == 'requirements'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/basics/requirements">Requirements</a>
                    </li>

                    <li {if Url::getUriSegment(2) == 'installation'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/basics/installation">Installation</a>
                    </li>

                    <li {if Url::getUriSegment(2) == 'upgrade'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/basics/upgrade">Upgrading to the Latest Version</a>
                    </li>

                    <li {if Url::getUriSegment(2) == 'migrating'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/basics/migrating">Moving Fansoro or Migrating Hosts</a>
                    </li>

                </ul>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading" id="headingTwo">
            <h4 class="panel-title"><a class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapseTwo">Content</a></h4>
        </div>

        <div class="panel-collapse collapse {if Url::getUriSegment(1) == 'content'}in{/if}" id="collapseTwo">
            <div class="panel-body">
                <ul class="nav nav-list">
                    <li {if Url::getUriSegment(2) == 'pages'}class="active"{/if}><a href="{Url::getBase()}/documentation/content/pages">Pages</a></li>
                    <li {if Url::getUriSegment(2) == 'pages-headers'}class="active"{/if}><a href="{Url::getBase()}/documentation/content/pages-headers">Headers</a></li>
                    <li {if Url::getUriSegment(2) == 'markdown'}class="active"{/if}><a href="{Url::getBase()}/documentation/content/markdown">Markdown</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading" id="headingThree">
            <h4 class="panel-title"><a class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapseThree">Themes</a></h4>
        </div>

        <div class="panel-collapse collapse {if Url::getUriSegment(1) == 'themes'}in{/if}" id="collapseThree">
            <div class="panel-body">
                <ul class="nav nav-list">
                    <li {if Url::getUriSegment(2) == 'theme-installation'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/themes/theme-installation">Themes Installation</a>
                    </li {if Url::getUriSegment(2) == 'theme-basics'}class="active"{/if}>
                    <li {if Url::getUriSegment(2) == 'theme-basics'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/themes/theme-basics">Theme Basics</a>
                    </li>
                    <li {if Url::getUriSegment(2) == 'theme-variables'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/themes/theme-variables">Theme Variables</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading" id="heading4">
            <h4 class="panel-title"><a class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapse4">Plugins</a></h4>
        </div>

        <div class="panel-collapse collapse {if Url::getUriSegment(1) == 'plugins'}in{/if}" id="collapse4">
            <div class="panel-body">
                <ul class="nav nav-list">
                    <li {if Url::getUriSegment(2) == 'plugins-installation'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/plugins/plugins-installation">Plugins Installation</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading" id="heading5">
            <h4 class="panel-title"><a class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapse5">Advanced</a></h4>
        </div>

        <div class="panel-collapse collapse {if Url::getUriSegment(1) == 'advanced'}in{/if}" id="collapse5">
            <div class="panel-body">
                <ul class="nav nav-list">
                    <li {if Url::getUriSegment(2) == 'constants'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/advanced/constants">Constants <span class="badge">Fansoro</span></a>
                    </li>
                    <li {if Url::getUriSegment(2) == 'shortcode'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/advanced/shortcode">Shortcode <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(2) == 'url'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/advanced/url">Url <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(2) == 'session'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/advanced/session">Session <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(2) == 'arr'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/advanced/arr">Array <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(2) == 'File'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/advanced/file">File <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(2) == 'dir'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/advanced/dir">Dir <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(2) == 'class-loader'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/advanced/response">Response <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(2) == 'class-loader'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/advanced/request">Request <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(2) == 'token'}class="active"{/if}>
                        <a href="{Url::getBase()}/documentation/advanced/token">Token <span class="badge">Force</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
