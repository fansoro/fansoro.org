<?php

/**
 * Fansoro Reading Time Plugin
 *
 * (c) Romanenko Sergey / Awilum <awilum@msn.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

Action::add('theme_header', function () {
    echo('<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.9.1/styles/'.Config::get('plugins.highlight.theme').'.min.css">');
});

Action::add('theme_footer', function () {
    echo('<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.9.1/highlight.min.js"></script>
          <script>hljs.initHighlightingOnLoad();</script>');
});
