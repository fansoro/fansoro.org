---
title: Morfy 1.1.3 Release
date: 2015-10-19 00:15
template: blog_post
author:
  name: Sergey Romanenko
---

### Morfy 1.1.3 Release :)    

### Changes in 1.1.3:  
* Default Theme: change layout.tpl to base.tpl
* Fixed welcome page bug. Change content to storage
* Fixed Prevent visitors from viewing yml, yaml files directly.

### Download  
[<i class="fa fa-download"></i> Morfy 1.1.3](https://github.com/morfy-cms/morfy/releases/download/v1.1.3/morfy-1.1.3.zip)  

### Update from Morfy 1.1.2 to Morfy 1.1.3  
1. **Backup your Site First!**    
2. Download [Morfy 1.1.3](https://github.com/morfy-cms/morfy/releases/download/v1.1.3/morfy-1.1.3.zip)    
3. Unzip the contents to a new folder on your local computer.  
4. Upload `/libraries/Morfy/`, with an FTP client to your host.
5. Update in .htaccess this
`<FilesMatch "(^#.*#|\.(md|txt|html|tpl)|~)$">`
to this:
`<FilesMatch "(^#.*#|\.(md|txt|html|tpl|yml|yaml)|~)$">`  

<hr>  

[<i class="fa fa-comments"></i> Discuss this article on the Morfy Forum](http://forum.morfy.org/discussion/45/morfy-1-1-3-release)  

[<i class="fa fa-comments"></i> Discuss this article on the Gitter Chat](https://gitter.im/morfy-cms/morfy)  
