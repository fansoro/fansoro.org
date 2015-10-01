<?php
    return array(
        'site_url' => 'http://morfy.org',
        'site_charset' => 'UTF-8',
        'site_timezone' => 'Europe/Helsinki',
        'site_theme' => 'default',
        'site_title' => 'Morfy',
        'site_description' => 'Simple and fast file-based CMS',
        'site_keywords' => 'morfy, cms, php, filesystem',
        'email' => 'awilum@msn.com',
        'plugins' => array(
            'markdown',
            'sitemap',
        ),
        /**
         * https://github.com/fenom-template/fenom/blob/master/docs/ru/configuration.md
         */
        'fenom' =>  array(
            // 'disable_methods' => false,
            // 'disable_native_funcs' => false,
            'auto_reload' => true,
            // 'force_compile' => false,
            // 'disable_cache' => false,
            'force_include' => true,
            // 'auto_escape' => false,
            // 'force_verify' => false,
            // 'disable_php_calls' => false,
            // 'disable_statics' => false,
            'strip' => true,
        )
    );
