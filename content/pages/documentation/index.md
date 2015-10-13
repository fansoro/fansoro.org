---
title: Documentation
description: Documentation for Morfy Developers and Morfy Users.
keywords: documentation, development, lessons, faq, cms, questions
template: index
---


<h3 id="Requirements">Requirements</h3>

Operation system: Unix, Linux, Windows, Mac OS  
Middleware: PHP 5.3.0 or higher with PHP's Multibyte String module  
Webserver: Apache with Mod Rewrite or Ngnix with Rewrite Module  

<br>

<h3 id="Installation">Installation</h3>

* Download the latest version.
* Unzip the contents to a new folder on your local computer.
* Upload that whole folder with an FTP client to your host.
* You may also need to recursively CHMOD the folder /content/, /themes/ to 755(or 777) if your host doesn't set it implicitly.
* Also you may also need to recursively CHMOD the /config.php, /install.php, /.htaccess to 755(or 777) if your host doesn't set it implicitly.
* Type http://example.org/install.php in the browser.

<br>

<h3 id="Content">Content</h3>


Morfy is a flat file CMS, this means there is no administration backend and database to deal with.  
You simply create .md files in the "content" folder and that becomes a page.

<br>

#### Creating Content

Morfy doesnt provide any administration backend and database to deal with.  
You just create `.md` files in the `content` folder and that becomes a page.

<br>

That how it looks:

<table class="table">
    <thead>
        <tr><th>Physical Location</th><th>URL</th></tr>
    </thead>
    <tbody>
        <tr><td>content/index.md</td><td>/</td></tr>
        <tr><td>content/sub.md</td><td>/sub</td></tr>
        <tr><td>content/sub/index.md</td><td>/sub (same as above)</td></tr>
        <tr><td>content/sub/page.md</td><td>/sub/page</td></tr>
        <tr><td>content/a/very/long/url.md</td><td>/a/very/long/url</td></tr>
    </tbody>
</table>


#### Text File Markup

Text files are marked up using Markdown Plugin. They can also contain regular HTML.
At the top of text files you can place a block comment and specify certain attributes of the page.

Example:

    Title: Welcome  
    Description: Some description here   
    Keywords: key, words
    Author: Awilum  
    Date: 2013/12/31  
    Tags: tag1, tag2
    Robots: noindex,nofollow  
    Template: index (allows you to use different templates in your theme)  
    {morfy_separator}

<br>

#### Text File Vars

Write text file vars inside `{}` e.g. `{var}`

<table class="table">
    <thead>
        <tr><th>Name</th><th>Description</th></tr>
    </thead>
    <tbody>
        <tr><td>site_url</td><td>Outputs site url</td></tr>
        <tr><td>morfy_separator</td><td>Outputs morfy separator</td></tr>
        <tr><td>morfy_version</td><td>Outputs morfy version</td></tr>
        <tr><td>cut</td><td>Page Cut</td></tr>
    </tbody>
</table>

<h3 id="Themes">Themes</h3>

You can create themes for your Morfy installation and in the "themes" folder.  
To setup your theme just update `theme` setting in config.php

All themes must include an index.html file to define the HTML structure of the theme.
You can seperate index.html to header.html and footer.html on your wish and easy include theme:
`<?php include 'header.html' ?>` and `<?php include 'footer.html' ?>`

<br>

#### Theme variables

<table class="table">
    <thead>
        <tr><th>Name</th><th>Description</th></tr>
    </thead>
    <tbody>
        <tr><td>Config</td><td></td></tr>
        <tr><td>$config['site_url']</td><td>Site url</td></tr>
        <tr><td>$config['site_charset']</td><td>Site charset</td></tr>
        <tr><td>$config['site_timezone']</td><td>Site timezone</td></tr>
        <tr><td>$config['site_theme']</td><td>Site theme</td></tr>
        <tr><td>$config['site_title']</td><td>Site title</td></tr>
        <tr><td>$config['site_description']</td><td>Site description</td></tr>
        <tr><td>$config['site_keywords']</td><td>Site keywords</td></tr>
        <tr><td>Page</td><td></td></tr>
        <tr><td>$page['title']</td><td>Page title</td></tr>
        <tr><td>$page['description']</td><td>Page description</td></tr>
        <tr><td>$page['keywords']</td><td>Page keywords</td></tr>
        <tr><td>$page['tags']</td><td>Page tags</td></tr>
        <tr><td>$page['url']</td><td>Page url</td></tr>
        <tr><td>$page['author']</td><td>Page author</td></tr>
        <tr><td>$page['date']</td><td>Page date</td></tr>
        <tr><td>$page['robots']</td><td>Page robots</td></tr>
        <tr><td>$page['template']</td><td>Page template</td></tr>
    </tbody>
</table>

Example how to output variable: `<?php echo $page['title']; ?>`

<br>

<h3 id="Confing">Config</h3>
You can set your own site title, keywords, description and etc.. by editing config.php in the root Morfy directory.

Default config.php

    <?php

        return array(
            'site_url' => '',
            'site_charset' => 'UTF-8',
            'site_timezone' => 'UTC',
            'site_theme' => 'default',
            'site_title' => 'Site title',
            'site_description' => 'Site description',
            'site_keywords' => 'site, keywords',
            'email' => 'admin@admin.com',
            'plugins' => array(
                'markdown',
                'sitemap',
            ),
        );


<br>
<h3 id="Plugins">Plugins</h3>

You can create plugins in the "plugins" folder.   
To setup your plugin just update `plugins` setting in config.php  

Morfy provides simple API to develope plugins.  
Available public methods:

        /**
         * Factory method making method chaining possible right off the bat.
         *
         *  <code>
         *      $morfy = Morfy::factory();
         *  </code>
         *
         * @access  public
         */
        public static function factory()

        /**
         * Run Morfy Application
         *
         *  <code>
         *      Morfy::factory()->run($path);
         *  </code>
         *
         * @param string $path Config path
         * @access  public
         */
        public function run($path)

        /**
         * Get Url
         *
         *  <code>
         *      $url = Morfy::factory()->getUrl();
         *  </code>
         *
         * @access  public
         * @return string
         */
        public function getUrl()

        /**
         * Get Uri Segments
         *
         *  <code>
         *      $uri_segments = Morfy::factory()->getUriSegments();
         *  </code>
         *
         * @access  public
         * @return array
         */
        public function getUriSegments()

        /**
         * Get Uri Segment
         *
         *  <code>
         *      $uri_segment = Morfy::factory()->getUriSegment(1);
         *  </code>
         *
         * @access  public
         * @return string
         */
        public function getUriSegment($segment)

        /**
         * Create safe url.
         *
         *  <code>
         *      $url = Morfy::factory()->sanitizeURL($url);
         *  </code>
         *
         * @access  public
         * @param  string $url Url to sanitize
         * @return string
         */
        public function sanitizeURL($url)

        /**
         * Sanitize URL to prevent XSS - Cross-site scripting
         *
         *  <code>
         *      Morfy::factory()->runSanitizeURL();
         *  </code>
         *
         * @access  public
         * @return void
         */
        public function runSanitizeURL()

        /**
         * Get pages
         *
         *  <code>
         *      $pages = Morfy::factory()->getPages(CONTENT_PATH . '/blog/');
         *  </code>
         *
         * @access  public
         * @param  string  $url        Url
         * @param  string  $order_by   Order by
         * @param  string  $order_type Order type
         * @param  array   $ignore     Pages to ignore
         * @param  int     $limit      Limit of pages
         * @return array
         */
        public function getPages($url, $order_by = 'date', $order_type = 'DESC', $ignore = array('404'), $limit = null)

        /**
         * Get page
         *
         *  <code>
         *      $page = Morfy::factory()->getPage('downloads');
         *  </code>
         *
         * @access  public
         * @param  string $url Url
         * @return array
         */
        public function getPage($url)

        /**
         * Get list of files in directory recursive
         *
         *  <code>
         *      $files = Morfy::factory()->getFiles('folder');
         *      $files = Morfy::factory()->getFiles('folder', 'txt');
         *      $files = Morfy::factory()->getFiles('folder', array('txt', 'log'));
         *  </code>
         *
         * @access  public
         * @param  string $folder Folder
         * @param  mixed  $type   Files types
         * @return array
         */
        public static function getFiles($folder, $type = null)        

        /**
         *  Hooks a function on to a specific action.
         *
         *  <code>
         *      // Hooks a function "newLink" on to a "footer" action.
         *      Morfy::factory()->addAction('footer', 'newLink', 10);
         *
         *      function newLink() {
         *          echo '<a href="#">My link</a>';
         *      }
         *  </code>
         *
         * @access  public
         * @param string  $action_name    Action name
         * @param mixed   $added_function Added function
         * @param integer $priority       Priority. Default is 10
         * @param array   $args           Arguments
         */

        /**
         * Run functions hooked on a specific action hook.
         *
         *  <code>
         *      // Run functions hooked on a "footer" action hook.
         *      Morfy::factory()->runAction('footer');
         *  </code>
         *
         * @access  public
         * @param  string  $action_name Action name
         * @param  array   $args        Arguments
         * @param  boolean $return      Return data or not. Default is false
         * @return mixed
         */

        /**
         * Apply filters
         *
         *  <code>
         *      Morfy::factory()->applyFilter('content', $content);
         *  </code>
         *
         * @access  public
         * @param  string $filter_name The name of the filter hook.
         * @param  mixed  $value       The value on which the filters hooked.
         * @return mixed
         */

        /**
         * Add filter
         *
         *  <code>
         *      Morfy::factory()->addFilter('content', 'replacer');
         *
         *      function replacer($content) {
         *          return preg_replace(array('/\[b\](.*?)\[\/b\]/ms'), array('<strong>\1</strong>'), $content);
         *      }
         *  </code>
         *
         * @access  public
         * @param  string  $filter_name     The name of the filter to hook the $function_to_add to.
         * @param  mixed  $function_to_add The name of the function to be called when the filter is applied.
         * @param  integer $priority        Function to add priority - default is 10.
         * @param  integer $accepted_args   The number of arguments the function accept default is 1.
         * @return boolean
         */

        /**
         * Subval sort
         *
         *  <code>
         *      $new_array = Morfy::factory()->subvalSort($old_array, 'sort');
         *  </code>
         *
         * @access  public
         * @param  array  $a      Array
         * @param  string $subkey Key
         * @param  string $order  Order type DESC or ASC
         * @return array
         */
