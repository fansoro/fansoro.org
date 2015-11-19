{extends 'base.tpl'}
{block 'content'}
    <div class="container container-content">
        {set $posts = Pages::getPages('blog', 'date', 'DESC', ['404','index'])}
        {foreach $posts as $post}
            <h3 class="blog-post-header"><a href="{Url::getBase()}/blog/{$post.slug}">{$post.title}</a></h3>
            <p class="blog-post-author">{$post.date} / {$post.author.name}</p>
        {/foreach}
    </div>
{/block}
