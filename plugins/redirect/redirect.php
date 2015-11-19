<?php

/**
 * Morfy Redirect Plugin
 *
 * (c) Romanenko Sergey / Awilum <awilum@msn.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

Action::add('before_page_rendered', function () {
    $page = Pages::getCurrentPage();
    $redirect = Arr::get($page, 'redirect');

    if (isset($redirect)) {
        Request::redirect($redirect);
    }
});
