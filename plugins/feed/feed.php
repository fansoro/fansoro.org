<?php

/**
 * Morfy Feed Plugin
 *
 * (c) Romanenko Sergey / Awilum <awilum@msn.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
if (Url::getUriSegment(0) == 'rss') {
    Action::add('before_page_rendered', function () {

        $template = Template::factory(PLUGINS_PATH . '/feed/templates/');

        $template->setOptions(array(
            "strip" => false
        ));

        Response::status(200);
        Request::setHeaders('Content-Type: text/xml; charset=utf-8');
        $template->display('rss.tpl', array('page'  => Pages::getPage(Config::get('plugins.feed.page')),
                                        'pages' => Pages::getPages(Config::get('plugins.feed.page'), 'date', 'DESC', array('404', 'index'))));
        Request::shutdown();

    });
}
