<?xml version="1.0" encoding="utf-8"?>
<rss xmlns:atom="http://www.w3.org/2005/Atom" version="2.0">
    <channel>
        <title>{$page.title}</title>
        <link>{$page.url}</link>
        <description>{$page.description}</description>
        <language>en-US</language>
        <atom:link href="{$page.url}" rel="self" type="application/rss+xml"/>
        {foreach $pages as $page}
        <item>
            <title>{$page.title}</title>
            <link>{$page.url}</link>
            <description>
                <![CDATA[
                    {substr($page.content, 0, 300)}
                ]]>
            </description>
            <guid>{$page.url}</guid>
            <pubDate>{$page.date}</pubDate>
        </item>
        {/foreach}
    </channel>
</rss>
