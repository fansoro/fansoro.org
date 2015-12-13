---
title: Installation
description: Documentation for Morfy Developers and Morfy Users.
template: documentation
---

## Using (S)FTP{.margin-top-hard}

[Download the latest version.](http://morfy.org/download)  

Unzip the contents to a new folder on your local computer, and upload to your webhost using the (S)FTP client of your choice. After you’ve done this, be sure to chmod the following directories (with containing files) to `777`, so they are readable and writable by Morfy:  
* `cache/`
* `config/`
* `storage/`
* `themes/`
* `plugins/`

## Using Composer

You can easily install Morfy with Composer.

```
composer create-project morfy-cms/morfy
```

Also you may need to install vendor libs for Default Theme
```
cd /morfy/themes/default  
bower install
```
