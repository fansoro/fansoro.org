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
    Morfy::factory()->addAction('before_render', function () {

        $fenom = Fenom::factory(
            PLUGINS_PATH . '/sitemap/templates/',
            CACHE_PATH . '/fenom/',
            Morfy::$fenom
        );

        $fenom->setOptions(array(
            "strip" => false
        ));

        $pages = Morfy::factory()->getPages('', 'date', 'DESC', array('404'));

        Response::status(200);
        Request::setHeaders('Content-Type: text/xml; charset=utf-8');
        $fenom->display('sitemap.tpl', array('pages' => $pages));
        Request::shutdown();

    });
}
