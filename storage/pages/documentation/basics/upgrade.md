---
title: Upgrading to the Latest Version
description: Documentation for Morfy Developers and Morfy Users.
template: documentation
---

### Update from **Morfy 1.1.4** to **Morfy 2.0.0**
1. **Backup your Site First!**
2. Download [Morfy 2.0.0](https://github.com/morfy-cms/morfy/releases/download/v2.0.0/morfy-2.0.0.zip)
3. Unzip the contents to a new folder on your local computer.
4. Upload `/vendors/`, `/morfy/`, `/themes/default/`, `/index.php`, `/config/system.yml` with an FTP client to your host.
5. Remove `/libraries/` from your host.

### Update from **Morfy 1.1.3** to **Morfy 1.1.4**
1. **Backup your Site First!**    
2. Download [Morfy 1.1.4](https://github.com/morfy-cms/morfy/releases/download/v1.1.4/morfy-1.1.4.zip)    
3. Unzip the contents to a new folder on your local computer.  
4. Upload `/libraries/Morfy/`, `/libraries/Force/` with an FTP client to your host.

### Update from **Morfy 1.1.2** to **Morfy 1.1.3**
1. **Backup your Site First!**    
2. Download [Morfy 1.1.3](https://github.com/morfy-cms/morfy/releases/download/v1.1.3/morfy-1.1.3.zip)    
3. Unzip the contents to a new folder on your local computer.  
4. Upload `/libraries/Morfy/`, with an FTP client to your host.
5. Update in .htaccess this   
`<FilesMatch "(^#.*#|\.(md|txt|html|tpl)|~)$">`   
to this:  
`<FilesMatch "(^#.*#|\.(md|txt|html|tpl|yml|yaml)|~)$">`  


### Update from **Morfy 1.1.1** to **Morfy 1.1.2**  
1. **Backup your Site First!**    
2. Download [Morfy 1.1.2](https://github.com/morfy-cms/morfy/releases/download/v1.1.2/morfy-1.1.2.zip)    
3. Unzip the contents to a new folder on your local computer.  
4. Upload `/libraries/`, with an FTP client to your host.  


### Update from **Morfy 1.1.0** to **Morfy 1.1.1**  
1. **Backup your Site First!**    
2. Download [Morfy 1.1.1](https://github.com/morfy-cms/morfy/releases/download/v1.1.1/morfy-1.1.1.zip)    
3. Unzip the contents to a new folder on your local computer.  
4. Upload `/themes/default/`, `/libraries/`, `/index.php`, with an FTP client to your host.  
5. Rename `content` folder to `storage`  


### Update from **Morfy 1.0.6** to **Morfy 1.1.0**
1. **Backup your Site First!**    
2. Download [Morfy 1.1.0](https://github.com/morfy-cms/morfy/releases/download/v1.1.0/morfy-1.1.0.zip)    
3. Unzip the contents to a new folder on your local computer.  
4. Upload `/config/`, `/themes/default/`, `/libraries/`, `/cache/`, `/content/`,  `/index.php`, `/robots.txt` with an FTP client to your host.  
5. Move all your pages from `content` to `/content/pages/`  
6. Update all your page headers in [valid YAML format](http://morfy.org/documentation/content/pages-headers)
7. Set your correct `url`, `title`, `description`, `keywords` and other settings in `/config/site.yml`
