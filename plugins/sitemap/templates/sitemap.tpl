<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
	{foreach $pages as $page}
	<url>
		<loc>{$page.url}</loc>
		<lastmod>{$page.date}</lastmod>
		<changefreq>{if $page.changefreq}{$page.changefreq}{else}1.0{/if}</changefreq>
		<priority>1.0</priority>
	</url>
    {/foreach}
</urlset>
