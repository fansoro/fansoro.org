---
title: Fansoro 1.1.0 Release
date: 2015-10-16 19:30
template: blog_post
author:
  name: Sergey Romanenko
---

Hello Everyone!   

I am happy to introduce Fansoro 1.1.0 with a lot of changes :)    

### Here is a list of major changes in 1.1.0:  
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


### Download  
[<i class="fa fa-download"></i> Fansoro 1.1.0](https://github.com/fansoro-cms/fansoro/releases/download/v1.1.0/fansoro-1.1.0.zip)  

### Update from Fansoro 1.0.6 to Fansoro 1.1.0  
1. **Backup your Site First!**    
2. Download [Fansoro 1.1.0](https://github.com/fansoro/fansoro/releases/download/v1.1.0/fansoro-1.1.0.zip)    
3. Unzip the contents to a new folder on your local computer.  
4. Upload `/config/`, `/themes/default/`, `/libraries/`, `/cache/`, `/content/`,  `/index.php`, `/robots.txt` with an FTP client to your host.  
5. Move all your pages from `content` to `/content/pages/`  
6. Update all your page headers in [valid YAML format](http://fansoro.org/documentation/content/pages-headers)
7. Set your correct `url`, `title`, `description`, `keywords` and other settings in `/config/site.yml`

### Current supported plugins for Fansoro 1.1.0  
[Maintenance](https://github.com/fansoro/fansoro-plugin-maintenance)  
[Feed](https://github.com/fansoro/fansoro-plugin-feed)   
[Sitemap](https://github.com/fansoro/fansoro-plugin-sitemap)   

### Current supported themes for Fansoro 1.1.0
[15 Bootswatch themes](https://github.com/fansoro/fansoro-theme-bootswatch)   

<hr>  

[<i class="fa fa-comments"></i> Discuss this article on the Gitter Chat](https://gitter.im/fansoro/fansoro)  
