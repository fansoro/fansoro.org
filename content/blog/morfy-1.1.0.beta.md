---
title: Morfy 1.1.0 beta
date: 2015-10-13 22:00
template: blog_post
author:
  name: Sergey Romanenko
---

Hello Everyone!  

Morfy 1.1.0 Beta is now available for **beta testing** :)  

Here is a list of major changes in 1.1.0:  

* Added Morfy MIT LICENSE instead of GNU GPL v3
* Added Fenom Template Engine
* Added Force Components (Arr, ClassLoader, FileSystem, Http, Session, Token, Url)
* Added Parsedown Lib for parsing Markdown files.
* Added SPYC Lib for parsing YAML configurations.
* Added new folders /cache/, /content/pages/ and /content/blocks/
* Added ability to display PAGE BLOCKS. {block=name} and Morfy::factory()->getBlock('name');
* Added new constants PAGES_PATH BLOCKS_PATH CACHE_PATH
* Added new Morfy and Fenom configuration files site.yml and fenom.yml
* Added new configuration file for Morfy default theme: default.yml
* Added new Morfy public method loadPageTemplate() - load page template.
* Added new Morfy public method parsedown() - to execute parsedown parser.
* Added new Morfy public method getBlock() - to get page block.
* Added new Morfy public static variables $site, $fenom and $theme
* Added ability to use custom variables for page header in valid YAML format.
* Added new page header format. Between triple-dashed lines is page header variables.
* Added add ability to load plugins configuration and disable or enable plugins.
* Added <!--more-- > for creating page summary text.
* Added Morfy Favicon: favicon.ico
* Added robots.txt
* Removed Morfy configuration file Morfy.php
* Removed PHP Tag {php}{/php} from content parser for security reasons.
* Removed {cut}(use <!--more-- > instead) also {morfy_separator} and {morfy_version} content tags.
* Removed Morfy private variable $page_headers. Because now you are free to set your own.
* Removed Morfy protected variable $security_token_name (its part of Force Token Class)
* Removed Morfy public static variable $config (use $site and $fenom instead)
* Removed Morfy constant SEPARATOR
* Removed Morfy methods obEval() evalPHP() cleanString()
* Removed Morfy method subvalSort() (its part of Force Arr Class)
* Removed Morfy methods checkToken() generateToken() (they are part of Force Token Class)
* Removed Morfy method getFiles() (its part of Force FileSystem/File Class)
* Removed Morfy methods runSanitizeURL() sanitizeURL() getUriSegment() getUriSegments() getUrl() (they are part of Force Http/Response and Http/Request Classes)
* Removed Markdown plugin
* Removed Sitemap plugin

Report any bugs you find via [GitHub](https://github.com/morfy-cms/morfy/issues) or [Morfy Forum](http://forum.morfy.org).  

**Remember, this is a beta release for beta testing, is not considered stable and should not be used for live web sites!**  

**Download:** [Morfy 1.1.0 Beta](http://morfy.org/public/morfy/morfy-1.1.0.beta.zip)  


[Discuss this article on the forum](http://forum.morfy.org/discussion/31/morfy-1-1-0-beta)
