---
title: Fansoro 2.0.2 Release
date: 2015-12-08 20:15
template: blog_post
author:
  name: Sergey Romanenko
---

Fansoro 2.0.2 Release :)

### Here is a list of changes in 2.0.2:
* Added BOWER for Default Theme
* Added ability to access Current Page Template with public static method getCurrentTemplate()
* Updated Twitter Bootstrap to 3.3.6 for Default Theme
* Updated Doctrine Cache to 1.5.2
* Updated .gitignore
* Fixed Default Themes styles

### Download
[<i class="fa fa-download"></i> Fansoro 2.0.2](https://github.com/fansoro/fansoro/releases/download/v2.0.2/fansoro-2.0.2.zip)

### Update from Fansoro 2.0.1 to Fansoro 2.0.2
1. **Backup your Site First!**
2. Download [Fansoro 2.0.2](https://github.com/fansoro/fansoro/releases/download/v2.0.2/fansoro-2.0.2.zip)
3. Unzip the contents to a new folder on your local computer.
4. Upload `/themes/default/`, `/fansoro/`, `/vendor/doctrine/`, `/.gitignore`, `/composer.json` with an (s)FTP client to your host.

<hr>

Default Theme in Fansoro 2.0.2 use BOWER http://bower.io   
And if your are using composer or github clone to install Fansoro   
then You also need to install vendors for Default Theme by running in console   

```
bower install
```

from default theme directory   

<hr>

Also, in Fansoro 2.0.2 you may access current page template and set your variables if needed    
Example:  
```
Action::add('before_page_rendered', function() {
    $template = Pages::getCurrentTemplate();
    $template->assign('var', 'value');
});
```

<hr>

[<i class="fa fa-comments"></i> Discuss this article on the Gitter Chat](https://gitter.im/fansoro/fansoro)
