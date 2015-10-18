---
title: ClassLoader
description: Documentation for Morfy Developers and Morfy Users.
keywords: documentation, development, lessons, faq, cms, questions
template: documentation
---

### Add class to mapping.
```
ClassLoader::mapClass('ClassName', 'path/to/class');
```

### Add multiple classes to mapping.
```
ClassLoader::mapClasses(array('ClassName' => 'path/to/class','ClassName' => 'path/to/class'));
```

### Adds a PSR-0 directory path.
```
ClassLoader::directory('path/to/classes');
```

### Registers a namespace.
```
ClassLoader::registerNamespace('Namespace', '/path/to/namespace/');
```

### Set an alias for a class.
```
ClassLoader::alias('ClassNameAlias', 'ClassName');
```

### Register the Gelato ClassLoader to the SPL autoload stack.
```
ClassLoader::register();
```
