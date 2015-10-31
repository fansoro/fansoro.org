{extends 'base.tpl'}
{block 'content'}
	<div class="container container-content">

		<div class="row">
		    <div class="col-md-9">
		        {$content}
				{if Url::getUriSegment(1) != ''}
				<hr>
				<a href="https://github.com/morfy-cms/morfy.org/tree/master/storage/pages/{Url::getUriString()}.md"><i class="fa fa-github-square"></i> {if Url::getUriSegment(0) == 'ru'}редактировать страницу{else}edit this page{/if}</a>
				{/if}
			</div>
			<div class="col-md-3">
				{include 'navbar/navbar-documentation.tpl'}
		    </div>
		</div>

	</div>
{/block}
