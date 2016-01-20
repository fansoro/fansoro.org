---
title: Fansoro 1.1.3 Release
date: 2015-10-19 00:15
template: blog_post
author:
  name: Sergey Romanenko
---

### Fansoro 1.1.3 Release :)    

### Changes in 1.1.3:  
* Default Theme: change layout.tpl to base.tpl
* Fixed welcome page bug. Change content to storage
* Fixed Prevent visitors from viewing yml, yaml files directly.

### Download  
[<i class="fa fa-download"></i> Fansoro 1.1.3](https://github.com/fansoro-cms/fansoro/releases/download/v1.1.3/fansoro-1.1.3.zip)  

### Update from Fansoro 1.1.2 to Fansoro 1.1.3  
1. **Backup your Site First!**    
2. Download [Fansoro 1.1.3](https://github.com/fansoro-cms/fansoro/releases/download/v1.1.3/fansoro-1.1.3.zip)    
3. Unzip the contents to a new folder on your local computer.  
4. Upload `/libraries/Fansoro/`, with an FTP client to your host.
5. Update in .htaccess this   
`<FilesMatch "(^#.*#|\.(md|txt|html|tpl)|~)$">`   
to this:  
`<FilesMatch "(^#.*#|\.(md|txt|html|tpl|yml|yaml)|~)$">`  

<hr>  

[<i class="fa fa-comments"></i> Discuss this article on the Fansoro Forum](http://forum.fansoro.org/discussion/53/fansoro-1-1-3-release)  

[<i class="fa fa-comments"></i> Discuss this article on the Gitter Chat](https://gitter.im/fansoro-cms/fansoro)  
