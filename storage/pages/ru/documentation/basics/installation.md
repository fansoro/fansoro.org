---
title: Installation
description: Documentation for Morfy Developers and Morfy Users.
keywords: documentation, development, lessons, faq, cms, questions
template: documentation
---

1. [Download the latest version.](http://morfy.org/download)
2. Unzip the contents to a new folder on your local computer.
3. Upload that whole folder with an FTP client to your host.
4. You may also need to recursively CHMOD the folder `/config/`, `/storage/`, `/cache/`, `/themes/` to 755(or 777) if your host doesn't set it implicitly.
5. Also you may also need to recursively CHMOD the `/install.php`, `/.htaccess` to 755(or 777) if your host doesn't set it implicitly.
6. Type http://example.org/install.php in the browser.
