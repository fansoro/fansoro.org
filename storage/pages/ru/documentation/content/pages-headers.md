---
title: Заголовок страницы
description: Документация для разработчиков и пользователей.
template: documentation
---

Страница должна иметь заголовок в YAML формате

Простой пример:  

```
---
title: My Page
description: My page description
---
My page body.
```

Между тройными дефисами, вы можете устанавливать заголовок страницы с перменными, которые можно будет использовать в шаблонах.  


### Предустановленные переменные в заголовке страницы
Список предустановленых переменных с примерами:
```
title: Welcome  
description: Some description here   
keywords: key, words
author:
  name: Sergey Romanenko
  email: awilum@msn.com
  url: https://github.com/Awilum
date: 2015-10-18 16:00
tags: tag1, tag2
robots: noindex, nofollow  
template: index (allows you to use different templates in your theme)  
```


### Кастомные переменные
Вы можете легко добавлять свои собтвенные переменыне в валиднном YAML формате.  

Пример:   
```
author:
  twitter: @morfy_cms
```
