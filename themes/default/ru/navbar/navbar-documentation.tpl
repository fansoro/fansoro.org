<div class="panel-group navigation-docs" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading" id="headingOne">
            <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" href="#collapseOne">Основное</a></h4>
        </div>

        <div class="panel-collapse collapse {if Url::getUriSegment(2) == 'basics' || Url::getUriSegment(2) == ''}in{/if}" id="collapseOne">
            <div class="panel-body">
                <ul class="nav nav-list">
                    <li {if Url::getUriSegment(3) == 'requirements'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/basics/requirements">Системные требования</a>
                    </li>

                    <li {if Url::getUriSegment(3) == 'installation'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/basics/installation">Установка на веб-сервер</a>
                    </li>

                    <li {if Url::getUriSegment(3) == 'upgrade'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/basics/upgrade">Обновление до последней версии</a>
                    </li>

                    <li {if Url::getUriSegment(3) == 'migrating'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/basics/migrating">Перенос сайта</a>
                    </li>

                </ul>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading" id="headingTwo">
            <h4 class="panel-title"><a class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapseTwo">Контент</a></h4>
        </div>

        <div class="panel-collapse collapse {if Url::getUriSegment(2) == 'content'}in{/if}" id="collapseTwo">
            <div class="panel-body">
                <ul class="nav nav-list">
                    <li {if Url::getUriSegment(3) == 'pages'}class="active"{/if}><a href="{Url::getBase()}/ru/documentation/content/pages">Страницы</a></li>
                    <li {if Url::getUriSegment(3) == 'pages-headers'}class="active"{/if}><a href="{Url::getBase()}/ru/documentation/content/pages-headers">Заголовки</a></li>
                    <li {if Url::getUriSegment(3) == 'markdown'}class="active"{/if}><a href="{Url::getBase()}/ru/documentation/content/markdown">Markdown</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading" id="headingThree">
            <h4 class="panel-title"><a class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapseThree">Шаблоны</a></h4>
        </div>

        <div class="panel-collapse collapse {if Url::getUriSegment(2) == 'themes'}in{/if}" id="collapseThree">
            <div class="panel-body">
                <ul class="nav nav-list">
                    <li {if Url::getUriSegment(3) == 'theme-installation'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/themes/theme-installation">Установка шаблонов</a>
                    </li {if Url::getUriSegment(3) == 'theme-basics'}class="active"{/if}>
                    <li {if Url::getUriSegment(3) == 'theme-basics'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/themes/theme-basics">Шаблоны</a>
                    </li>
                    <li {if Url::getUriSegment(3) == 'theme-variables'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/themes/theme-variables">Перменные в шаблонах</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading" id="heading4">
            <h4 class="panel-title"><a class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapse4">Плагины</a></h4>
        </div>

        <div class="panel-collapse collapse {if Url::getUriSegment(2) == 'plugins'}in{/if}" id="collapse4">
            <div class="panel-body">
                <ul class="nav nav-list">
                    <li {if Url::getUriSegment(3) == 'plugins-installation'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/plugins/plugins-installation">Установка плагинов</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading" id="heading5">
            <h4 class="panel-title"><a class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapse5">Другое</a></h4>
        </div>

        <div class="panel-collapse collapse {if Url::getUriSegment(2) == 'advanced'}in{/if}" id="collapse5">
            <div class="panel-body">
                <ul class="nav nav-list">
                    <li {if Url::getUriSegment(3) == 'constants'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/advanced/constants">Constants <span class="badge">Morfy</span></a>
                    </li>
                    <li {if Url::getUriSegment(3) == 'shortcode'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/advanced/shortcode">Shortcode <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(3) == 'url'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/advanced/url">Url <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(3) == 'session'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/advanced/session">Session <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(3) == 'arr'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/advanced/arr">Array <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(3) == 'File'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/advanced/file">File <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(3) == 'dir'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/advanced/dir">Dir <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(3) == 'class-loader'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/advanced/response">Response <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(3) == 'class-loader'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/advanced/request">Request <span class="badge">Force</span></a>
                    </li>
                    <li {if Url::getUriSegment(3) == 'token'}class="active"{/if}>
                        <a href="{Url::getBase()}/ru/documentation/advanced/token">Token <span class="badge">Force</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
