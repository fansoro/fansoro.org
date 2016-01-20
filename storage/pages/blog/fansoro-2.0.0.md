---
title: Fansoro 2.0.0 Release
date: 2015-11-20 18:00
template: blog_post
author:
  name: Sergey Romanenko
---

Hello Everyone!

I am happy to introduce Fansoro 2.0.0 with a lot of changes :)  
Fansoro 2.0.0 has totaly new Architecture, improved Security and amazing Performance.

### Here is a list of major changes in 2.0.0:
* Improved Fansoro Architecture.
* Improved Fansoro Security.
* Improved Default Fansoro Theme.
* Improved Fansoro Configurations System.
* Added Fansoro Smart Cache based on Doctrine Cache with ability to choose any cache driver.
* Added Minimum PHP version support is 5.5
* Added Composer Support.
* Added Fansoro `/boot/` directory with defines.php, shortcodes.php, actions.php filters.php
* Added New Classes: Action, Filter, Blocks, Cache, Config, Pages, Template, Yaml, Plugins.
* Added New Config file: system.yml to store system settings.
* Added New Pages::getCurrentPage() and Pages::updateCurrentPage() public methods.
* Added New Pages::display() public method.
* Added New Pages actions `before_page_rendered` and `after_page_rendered`
* Added Shortcode and Markdown parsers as a content filters.
* Added Fenom Storage to store data in Fenom.
* Added Output buffering.
* Added New Theme $config variable instead of {$.config}
* Added ability to configure of display errors. Default value is false - for production.
* Added and used Composer Autoloader instead of Force Autoloader.
* Added .gitignore, composer.json and .gitkeep instead of .empty
* Added New Action on `theme_meta` with meta generator information.
* Removed BLOCKS_PATH and PAGES_PATH constants.
* Removed constants: site, fenom, theme, page, plugins and actions from Fansoro Class.
* Removed force, fenom, parsedown and spyc from libraries directory, and libraries also removed.
* Removed Fenom Config file fenom.yml
* Removed Actions `before_render` and `after_render`
* Removed Fansoro Installer.

### Download
[<i class="fa fa-download"></i> Fansoro 2.0.0](https://github.com/fansoro-cms/fansoro/releases/download/v2.0.0/fansoro-2.0.0.zip)

### Update from Fansoro 1.1.4 to Fansoro 2.0.0
1. **Backup your Site First!**
2. Download [Fansoro 2.0.0](https://github.com/fansoro-cms/fansoro/releases/download/v2.0.0/fansoro-2.0.0.zip)
3. Unzip the contents to a new folder on your local computer.
4. Upload `/vendors/`, `/fansoro/`, `/themes/default/`, `/index.php`, `/config/system.yml` with an FTP client to your host.
5. Remove `/libraries/` from your host.

<hr>

[<i class="fa fa-comments"></i> Discuss this article on the Fansoro Forum](http://forum.fansoro.org/discussion/67/fansoro-2-0-0-release)

[<i class="fa fa-comments"></i> Discuss this article on the Gitter Chat](https://gitter.im/fansoro-cms/fansoro)
