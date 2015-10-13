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
    Morfy::factory()->addAction('before_render', function () {

        $fenom = Fenom::factory(
            PLUGINS_PATH . '/feed/templates/',
            CACHE_PATH . '/fenom/',
            Morfy::$fenom
        );

        $fenom->setOptions(array(
            "strip" => false
        ));

        Response::status(200);
        Request::setHeaders('Content-Type: text/xml; charset=utf-8');
        $fenom->display('rss.tpl', array('page'  => Morfy::factory()->getPage(Morfy::$plugins['feed']['page']),
                                         'pages' => Morfy::factory()->getPages(Morfy::$plugins['feed']['page'], 'date', 'DESC', array('404'))));
        Request::shutdown();

    });
}
