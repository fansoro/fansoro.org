---
title: Upgrading to the Latest Version
description: Documentation for Morfy Developers and Morfy Users.
keywords: documentation, development, lessons, faq, cms, questions
template: documentation
---

### Update from **Morfy 1.0.6** to **Morfy 1.1.0**
1. **Backup your Site First!**    
2. Download [Morfy 1.1.0](https://github.com/morfy-cms/morfy/releases/download/v1.1.0/morfy-1.1.0.zip)    
3. Unzip the contents to a new folder on your local computer.  
4. Upload `/config/`, `/themes/default/`, `/libraries/`, `/cache/`, `/content/`,  `/index.php`, `/robots.txt` with an FTP client to your host.  
5. Move all your pages from `content` to `/content/pages/`  
6. Update all your page headers in [valid YAML format](http://morfy.org/documentation/content/pages-headers)
7. Set your correct `url`, `title`, `description`, `keywords` and other settings in `/config/site.yml`
