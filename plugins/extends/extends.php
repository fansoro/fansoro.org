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
    public static function getPlugins()
    {
        $file = Markdown::parse(file_get_contents('https://raw.githubusercontent.com/morfy-cms/morfy-plugins-catalog/master/README.md'));
        echo $file;
    }

    public static function getThemes()
    {
        /* If there a list of YAML files
        $_themes = Spyc::YAMLLoad(file_get_contents('https://raw.githubusercontent.com/morfy-cms/morfy-themes-catalog/master/themes.yml'));

        foreach ($_themes as $theme) {
            $themes[] = Spyc::YAMLLoad(file_get_contents($theme));
        }
        */

        $themes = Yaml::parse(file_get_contents('https://raw.githubusercontent.com/morfy-cms/morfy-themes-catalog/master/themes.yml'));

        $template = Template::factory(PLUGINS_PATH . '/extends/templates/');

        $template->display('themes.tpl', array('themes' => $themes));
    }
}
