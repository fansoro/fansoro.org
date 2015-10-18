<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="{$description}>">
		<meta name="keywords" content="{$keywords}">
		<meta name='yandex-verification' content='65ab8145c4e162f5' />
		{Morfy::runAction('theme_meta')}
		<link rel="shortcut icon" href="{$.site.url}/favicon.ico">
		<title>{$.site.title} | {$title}</title>

		{* Bootstrap core CSS *}
		<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700' rel='stylesheet' type='text/css'>
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha256-k2/8zcNbxVIh5mnQ52A0r3a6jAgMGxFJFE2707UxGCk= sha512-ZV9KawG2Legkwp3nAlxLIVFudTauWuBpC10uEafMHYL0Sarrz5A7G79kXh5+5+woxQ5HM559XX2UZjMJ36Wplg==" crossorigin="anonymous">
		<link href="{$.site.url}/themes/default/assets/css/bootstrap.min.css" rel="stylesheet">
		<link href="{$.site.url}/themes/default/assets/css/default.css" rel="stylesheet">
		<link href="{$.site.url}/themes/default/assets/css/animate.css" rel="stylesheet">
		<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.8.0/styles/default.min.css">
		{Morfy::runAction('theme_header')}
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
	<body {if Url::getUriSegment(0) != ''}class="light-theme"{/if}>
		<div id="wrap">
		    <div class="mega-header">
			    {include 'navbar.tpl'}

                {if Url::getUriSegment(0) == ''}
                <div class="morfy-promo-block wow fadeIn animated">
                    <h1>Introducing Morfy</h1>
                    <p class="lead">Morfy is a simple, fast and light-weighted file-based Content<br> Management System. Making the Web easy.</p>
                    <a class="btn btn-white btn-lg btn-download-morfy" href="https://github.com/morfy-cms/morfy/releases/download/v1.1.2/morfy-1.1.2.zip"><i class="fa fa-download"></i> Download Morfy 1.1.2</a>
                    <a class="btn btn-white btn-lg btn-github-morfy" href="https://github.com/morfy-cms/morfy"><i class="fa fa-github"></i> View Project on GitHub</a>
				</div>
                {else}
                    <div class="container">
                        {if Url::getUriSegment(0) == 'blog' && Url::getUriSegment(1) == ''}
                            <h1 class="page-header-h1">News about Morfy <a href="http://morfy.org/rss"><i class="fa fa-rss floa-right"></i></a></h1>
                        {else}
                            <h1 class="page-header-h1">{$title}</h1>
                        {/if}
                    </div>
                {/if}
			</div>

            {if Url::getUriSegment(0) == ''}
				{include 'benefits.tpl'}
				{include 'testimonial.tpl'}
            {/if}

			{Morfy::runAction('theme_content_before')}
			{block 'content'}{/block}
			{Morfy::runAction('theme_content_after')}
		</div>
		<div id="footer">
			<div class="container">
                <p>
                    <span>© 2015 <a href="https://github.com/Awilum" rel="nofollow">Sergey Romanenko</a></span>
                    <span class="pull-right">
                        Stay in touch:
                        <a rel="nofollow" href="https://twitter.com/morfy_cms">@morfy_cms</a> <span class="social-link-del">/</span>
                        <a rel="nofollow" href="https://gitter.im/morfy-cms/morfy">Gitter</a> <span class="social-link-del">/</span>
                        <a rel="nofollow" href="https://www.facebook.com/MorfyCMS">Facebook</a> <span class="social-link-del">/</span>
						<a rel="nofollow" href="http://www.youtube.com/c/MorfyOrganization">YouTube</a> <span class="social-link-del">/</span>
                        <a rel="nofollow" href="https://vk.com/morfy_cms">VK</a>
                    </span>
                </p>
			</div>
		</div>
		{* Bootstrap core JavaScript *}
		{* Placed at the end of the document so the pages load faster *}
		<script src="{$.site.url}/themes/default/assets/js/jquery.min.js"></script>
		<script src="{$.site.url}/themes/default/assets/js/bootstrap.min.js"></script>
		<script src="{$.site.url}/themes/default/assets/js/wow.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.8.0/highlight.min.js"></script>
		<script src="{$.site.url}/themes/default/assets/js/default.js"></script>
		{Morfy::runAction('theme_footer')}
	</body>
</html>
