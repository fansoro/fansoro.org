{extends 'base.tpl'}
{block 'content'}
	<div class="container container-content">

		<div class="row">
		    <div class="col-md-9">
		        {$content}
				{if (Url::getUriSegment(0) != '' && Url::getUriSegment(0) != 'ru') || (Url::getUriSegment(1) != '' && Url::getUriSegment(0) == 'ru')}
					<hr>
					<a href="https://github.com/fansoro/fansoro.org/tree/master/storage/pages/{Url::getUriString()}.md"><i class="fa fa-github-square"></i> {if Url::getUriSegment(0) == 'ru'}редактировать страницу{else}edit this page{/if}</a>
				{/if}
			</div>
			<div class="col-md-3">
				{if Url::getUriSegment(0) == 'ru'}
					{include 'ru/navbar/navbar-documentation.tpl'}
				{else}
					{include 'navbar/navbar-documentation.tpl'}
				{/if}
			</div>
		</div>

	</div>
{/block}
