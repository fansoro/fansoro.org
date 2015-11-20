<?php

/**
 * Morfy Sitemap Plugin
 *
 * (c) Romanenko Sergey / Awilum <awilum@msn.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

if (Url::getUriSegment(0) == 'sitemap.xml') {
    Action::add('before_page_rendered', function () {

        $template = Template::factory(PLUGINS_PATH . '/sitemap/templates//');

        $template->setOptions(array(
            "strip" => false
        ));

        $pages = Pages::getPages('', 'date', 'DESC', array('404'));

        Response::status(200);
        Request::setHeaders('Content-Type: text/xml; charset=utf-8');
        $template->display('sitemap.tpl', array('pages' => $pages));
        Request::shutdown();

    });
}
