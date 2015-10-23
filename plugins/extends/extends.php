<?php

/**
 * Morfy Extends Repository Plugin
 *
 * (c) Romanenko Sergey / Awilum <awilum@msn.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

class Repository
{
    public static function getThemes()
    {
        /* If there a list of YAML files
        $_themes = Spyc::YAMLLoad(file_get_contents('https://raw.githubusercontent.com/morfy-cms/morfy-themes-catalog/master/themes.yml'));

        foreach ($_themes as $theme) {
            $themes[] = Spyc::YAMLLoad(file_get_contents($theme));
        }
        */

        $themes = Spyc::YAMLLoad(file_get_contents('https://raw.githubusercontent.com/morfy-cms/morfy-themes-catalog/master/themes.yml'));

        $fenom = Fenom::factory(
            PLUGINS_PATH . '/extends/templates/',
            CACHE_PATH . '/fenom/',
            Morfy::$fenom
        );

        $fenom->display('themes.tpl', array('themes' => $themes));
    }
}
