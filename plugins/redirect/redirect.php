<?php

/**
 * Morfy Redirect Plugin
 *
 * (c) Romanenko Sergey / Awilum <awilum@msn.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

Morfy::addAction('before_render', function () {
    if (isset(Morfy::$page['redirect'])) {
        Request::redirect(Morfy::$page['redirect']);
    }
});
