<?php

/**
 * Morfy Snow Plugin
 *
 * (c) Romanenko Sergey / Awilum <awilum@msn.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

Action::add('theme_footer', function () {
    echo('<script src="'.Url::getBase().'/plugins/snow/lib/snow.js"></script>
          <script>
          $(document).ready( function(){
              $.fn.snow({ minSize: '.Config::get('plugins.snow.min_size').',
                          maxSize: '.Config::get('plugins.snow.max_size').',
                          newOn: '.Config::get('plugins.snow.new_on').',
                          flakeColor: "'.Config::get('plugins.snow.flake_color').'"});
          });
          </script>');
});
