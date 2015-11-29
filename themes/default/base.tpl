<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="{$description}">
		<meta name='yandex-verification' content='65ab8145c4e162f5' />
		{Action::run('theme_meta')}
		<title>{$config.site.title} | {$title}</title>

		<link rel="shortcut icon" href="{Url::getBase()}/favicon.ico">

		<link rel="icon" href="{Url::getBase()}/public/assets/morfy-icon-296.png" sizes="296x296" type="image/png">

		<link rel="apple-touch-icon-precomposed" sizes="152x152" href="{Url::getBase()}/public/assets/morfy-icon-152.png">
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="{Url::getBase()}/public/assets/morfy-icon-144.png">
		<link rel="apple-touch-icon-precomposed" sizes="120x120" href="{Url::getBase()}/public/assets/morfy-icon-120.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="{Url::getBase()}/public/assets/morfy-icon-114.png">

		<meta name="msapplication-TileColor" content="#FFFFFF">
		<meta name="msapplication-TileImage" content="{Url::getBase()}/public/assets/morfy-icon-144.png">

		<meta property="fb:app_id" content="795025567272801" />

		{* Open Graph Protocol *}
  		<meta property="og:type" content="website">
		<meta property="og:site_name" content="{$config.site.title}">
	    <meta property="og:url" content="{$url}">
	    <meta property="og:title" content="{$title} | {$config.site.title}">
		<meta property="og:image" content="http://morfy.org/public/assets/img/morfy-logo.png">

		{* Twitter Card *}
  		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:account_id" content="3068674037">
		<meta name="twitter:site" content="@morfy_cms">
		<meta name="twitter:title" content="{$title} | {$config.site.title}">
		<meta name="twitter:description" content="Morfy is Modern Open Source Flat-File Content Management System. Content in Morfy is just a simple files written with markdown syntax in pages folder. You simply create markdown files in the pages folder and that becomes a page.">
		<meta name="twitter:image" content="http://morfy.org/public/assets/img/morfy-logo.png">

	    {* Google+ Snippets *}
		<link href="https://plus.google.com/+MorfyOrganization" rel="publisher">

		{* Bootstrap core CSS *}
		<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700' rel='stylesheet' type='text/css'>
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" crossorigin="anonymous">
		<link href="{Url::getBase()}/themes/default/assets/css/morfy.css?1" rel="stylesheet">
		<link href="{Url::getBase()}/themes/default/assets/css/animate.css" rel="stylesheet">
		{Action::run('theme_header')}
		{ignore}
		<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		  ga('create', 'UA-67318559-1', 'auto');
		  ga('send', 'pageview');
		</script>
		{/ignore}
	</head>
	<body {if (Url::getUriSegment(0) != '' && Url::getUriSegment(0) != 'ru') || (Url::getUriSegment(1) != '' && Url::getUriSegment(0) == 'ru')}class="light-theme"{/if}>
		{if (Url::getUriSegment(0) != '' && Url::getUriSegment(0) != 'ru') || (Url::getUriSegment(1) != '' && Url::getUriSegment(0) == 'ru')}
		{else}
		<canvas class="universe"></canvas>
		<div class="universe-dark-matter"></div>
		{/if}
		<div id="wrap">
		    <div class="mega-header">
				{if Url::getUriSegment(0) == 'ru'}
					{include 'ru/navbar/navbar.tpl'}
				{else}
			    	{include 'navbar/navbar.tpl'}
				{/if}

                {if (Url::getUriSegment(0) == '' || Url::getUriSegment(0) == 'ru') && Url::getUriSegment(1) == ''}
                <div class="morfy-promo-block wow fadeIn">
					{if Url::getUriSegment(0) == 'ru'}
						<h1>ПРОСТАЯ И БЫСТРАЯ</h1>
                    	<p class="lead">OPEN SOURCE CMS НА ФАЙЛАХ</p>
                    	<a class="btn btn-lg btn-download-morfy" href="https://github.com/morfy-cms/morfy/releases/download/v2.0.0/morfy-2.0.0.zip">Скачать Morfy</a>
					{else}
				    	<h1>Introducing Morfy</h1>
						<p class="lead">Modern Open Source Flat-File Content Management System.</p>
                    	<a class="btn btn-lg btn-download-morfy" href="https://github.com/morfy-cms/morfy/releases/download/v2.0.0/morfy-2.0.0.zip">Download Morfy</a>
					{/if}
				</div>
                {else}
                    <div class="container">
                        {if Url::getUriSegment(0) == 'blog' && Url::getUriSegment(1) == ''}
                            <h1 class="page-header-h1">News about Morfy <a href="http://morfy.org/rss" class="blog-rss-button"><i class="fa fa-rss"></i></a></h1>
                        {else}
                            <h1 class="page-header-h1">{$title}</h1>
                        {/if}
                    </div>
                {/if}
			</div>

            {if (Url::getUriSegment(0) == '' || Url::getUriSegment(0) == 'ru') && Url::getUriSegment(1) == ''}
				{if Url::getUriSegment(0) == 'ru'}
					{include 'ru/benefits.tpl'}
					{include 'ru/testimonial.tpl'}
				{else}
					{include 'benefits.tpl'}
					{include 'testimonial.tpl'}
				{/if}
			{/if}

			{Action::run('theme_content_before')}
			<section>
			    <div class="separator top grey"></div>
				{block 'content'}{/block}
			</section>
			{Action::run('theme_content_after')}
		</div>
		<div id="footer">
			<div class="separator top grey"></div>
			<div class="container">
                <p class="social-links text-center">
					<a rel="nofollow" href="https://twitter.com/morfy_cms"><i class="fa fa-twitter"></i></a>
					<a rel="nofollow" href="https://github.com/morfy-cms/morfy"><i class="fa fa-github"></i></a>
					<a rel="nofollow" href="https://gitter.im/morfy-cms/morfy"><i class="fa fa-comments"></i></a>
					<a rel="nofollow" href="https://www.facebook.com/MorfyCMS"><i class="fa fa-facebook"></i></a>
					<a rel="nofollow" href="http://www.youtube.com/c/MorfyOrganization"><i class="fa fa-youtube-play"></i></a>
					<a rel="nofollow" href="https://vk.com/morfy_cms"><i class="fa fa-vk"></i></a>
                </p>
				<p class="text-center">
					<ul class="copyright">
						<li>© 2015 <a href="http://awilum.github.io">Sergey Romanenko</a></li>
						<li>All rights reserved</li>
						<li>Morfy is released under the MIT license</li>
					</ul>
				</p>
			</div>
		</div>
		<div class="live-chat-button"><i class="fa fa-comments"></i></div>
		{* Bootstrap core JavaScript *}
		{ignore}
		<script>
		((window.gitter = {}).chat = {}).options = {
	        room: 'morfy-cms/morfy',
	        activationElement: '.live-chat-button'
	    };
		</script>
		{/ignore}
		{* Placed at the end of the document so the pages load faster *}
		<script src="https://sidecar.gitter.im/dist/sidecar.v1.js" async defer></script>
		<script src="{Url::getBase()}/themes/default/assets/js/jquery.min.js"></script>
		<script src="{Url::getBase()}/themes/default/assets/js/bootstrap.min.js"></script>
		<script src="{Url::getBase()}/themes/default/assets/js/wow.min.js"></script>
		<script src="{Url::getBase()}/themes/default/assets/js/default.js"></script>
		{if Url::getUriSegment(0) == 'ru' || Url::getUriSegment(0) == ''}
		<script src="{Url::getBase()}/themes/default/assets/js/universe.js" async></script>
		{/if}

		{Action::run('theme_footer')}
	</body>
</html>
