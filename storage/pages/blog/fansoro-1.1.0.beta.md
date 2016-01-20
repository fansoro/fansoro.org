---
title: Fansoro 1.1.0 beta
date: 2015-10-13 22:00
template: blog_post
author:
  name: Sergey Romanenko
---

Hello Everyone!  

Fansoro 1.1.0 Beta is now available for **beta testing** :)  

Here is a list of major changes in 1.1.0:  

* Added Fansoro MIT LICENSE instead of GNU GPL v3
* Added Fenom Template Engine
* Added Force Components (Arr, ClassLoader, FileSystem, Http, Session, Token, Url)
* Added Parsedown Lib for parsing Markdown files.
* Added SPYC Lib for parsing YAML configurations.
* Added new folders /cache/, /content/pages/ and /content/blocks/
* Added ability to display PAGE BLOCKS. {block=name} and Fansoro::getBlock('name');
* Added new constants PAGES_PATH BLOCKS_PATH CACHE_PATH
* Added new Fansoro and Fenom configuration files site.yml and fenom.yml
* Added new configuration file for Fansoro default theme: default.yml
* Added new Fansoro public method loadPageTemplate() - load page template.
* Added new Fansoro public method parsedown() - to execute parsedown parser.
* Added new Fansoro public method getBlock() - to get page block.
* Added new Fansoro public static variables $site, $fenom and $theme
* Added ability to use custom variables for page header in valid YAML format.
* Added new page header format. Between triple-dashed lines is page header variables.
* Added add ability to load plugins configuration and disable or enable plugins.
* Added <!--more-- > for creating page summary text.
* Added Fansoro Favicon: favicon.ico
* Added robots.txt
* Removed Fansoro configuration file Fansoro.php
* Removed PHP Tag {php}{/php} from content parser for security reasons.
* Removed {cut}(use <!--more-- > instead) also {fansoro_separator} and {fansoro_version} content tags.
* Removed Fansoro private variable $page_headers. Because now you are free to set your own.
* Removed Fansoro protected variable $security_token_name (its part of Force Token Class)
* Removed Fansoro public static variable $config (use $site and $fenom instead)
* Removed Fansoro constant SEPARATOR
* Removed Fansoro methods obEval() evalPHP() cleanString()
* Removed Fansoro method subvalSort() (its part of Force Arr Class)
* Removed Fansoro methods checkToken() generateToken() (they are part of Force Token Class)
* Removed Fansoro method getFiles() (its part of Force FileSystem/File Class)
* Removed Fansoro methods runSanitizeURL() sanitizeURL() getUriSegment() getUriSegments() getUrl() (they are part of Force Http/Response and Http/Request Classes)
* Removed Markdown plugin
* Removed Sitemap plugin

Report any bugs you find via [GitHub](https://github.com/fansoro/fansoro/issues) or [Fansoro Forum](http://forum.fansoro.org).  

**Remember, this is a beta release for beta testing, is not considered stable and should not be used for live web sites!**  

**Download:** [Fansoro 1.1.0 Beta](http://fansoro.org/public/fansoro/fansoro-1.1.0.beta.zip)  

<hr>    

[<i class="fa fa-comments"></i> Discuss this article on the Gitter Chat](https://gitter.im/fansoro/fansoro)  
