---
title: Installation
description: Documentation for Fansoro Developers and Fansoro Users.
template: documentation
---

## Using (S)FTP{.margin-top-hard}

[Download the latest version.](http://fansoro.org/download)  

Unzip the contents to a new folder on your local computer, and upload to your webhost using the (S)FTP client of your choice. After you’ve done this, be sure to chmod the following directories (with containing files) to `777`, so they are readable and writable by Fansoro:  
* `cache/`
* `config/`
* `storage/`
* `themes/`
* `plugins/`

## Using Composer

You can easily install Fansoro with Composer.

```
composer create-project fansoro/fansoro
```

Also you may need to install vendor libs for Default Theme
```
cd /fansoro/themes/default  
bower install
```
