---
title: Morfy 1.0.3
date: 2014-01-24 22:00
template: blog_post
author:
  name: Sergey Romanenko
---

Changes:    
* New method generateToken() - Generate and store a unique token which can be used to help prevent CSRF attacks.  
* New method checkToken() - Check that the given token matches the currently stored security token.  
* New method cleanString() - Sanitize data to prevent XSS (Cross-site scripting)  
* Default Theme - Improvements  

Download: [Morfy 1.0.3](https://github.com/Awilum/morfy-cms/archive/v1.0.3.zip)
