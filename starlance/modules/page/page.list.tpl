<!-- BEGIN: MAIN -->
<div class="uk-section uk-background-muted uk-padding-small">
	<div class="uk-container">
		<h1 class="uk-heading-bullet">{LIST_CATTITLE}</h1>
	</div>
</div>
<!-- BEGIN: LIST_ROWCAT -->
<div class="uk-section uk-background-muted uk-padding-small">
	<div class="uk-container">
		<h3><a href="{LIST_ROWCAT_URL}" title="{LIST_ROWCAT_TITLE}">{LIST_ROWCAT_TITLE}</a> ({LIST_ROWCAT_COUNT})</h3>
		<!-- IF {LIST_ROWCAT_DESC} -->
		{LIST_ROWCAT_DESC}
		<!-- ENDIF -->
	</div>
</div>
<!-- END: LIST_ROWCAT -->
<div class="uk-section uk-background-muted uk-padding-small">
	<div class="uk-container">
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-3-4@m">
			<!-- BEGIN: LIST_ROW -->
				<div class="uk-card uk-card-default uk-card-body uk-margin-bottom">
					<!-- IF {PHP.usr.id} == {LIST_ROW_OWNER_ID} OR {PHP.usr.isadmin} --> 
					<div class="uk-position-top-right">
						<a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button uk-button-default" href="{LIST_ROW_ID|cot_url('page','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
					</div>
					<!-- ENDIF -->	
					<h3 class="uk-heading-bullet uk-margin-remove-top uk-text-truncate"><a class="uk-link-text" href="{LIST_ROW_URL}">{LIST_ROW_SHORTTITLE}</a><!-- IF {PHP.usr.isadmin} --><span class="uk-label uk-margin-left">{LIST_ROW_COUNT}</span><!-- ENDIF --></h3>
					<!-- IF {LIST_ROW_DESC} -->
					<span class="uk-text-secondary">{LIST_ROW_DESC}</span>
					<!-- ENDIF -->
					<div>
						<span class="uk-text-muted">
						{LIST_ROW_TEXT_CUT|strip_tags($this)|mb_substr($this, 0, 350, 'UTF-8')}...</span>
						<!-- IF {LIST_ROW_TEXT_IS_CUT} -->{LIST_ROW_MORE}<!-- ENDIF -->
					</div>
				</div>
			<!-- END: LIST_ROW -->
			</div>
			<div class="uk-width-1-4@m">
			<!-- IF {PHP.cfg.menu1} -->
				<div class="uk-card uk-card-default uk-card-body uk-margin-bottom">
					<ul class="uk-list uk-list-divider">
					{PHP.cfg.menu1}
					</ul>
				</div>
			<!-- ENDIF -->
			<!-- IF {PHP.usr.auth_write} -->
				<div class="uk-card uk-card-default uk-card-body">
				<h2 class="">{PHP.L.Admin}</h2>
				<ul class="uk-list uk-list-divider">
					<!-- IF {PHP.usr.isadmin} -->
					<li><a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li>
					<li><a href="{PHP|cot_url('admin','m=page')}">{PHP.L.Adminpanel}</a></li>
					<!-- ENDIF -->
					<li>{LIST_SUBMITNEWPAGE}</li>
				</ul>
				</div>
			<!-- ENDIF -->
			</div>
		</div>
	</div>
</div>
<div class="uk-section uk-background-muted uk-padding-small">
	<div class="uk-container">
		<!-- IF {LIST_TAG_CLOUD} -->
		{PHP.L.Tags} {LIST_TAG_CLOUD}
		<!-- ENDIF -->
	</div>
	<div class="uk-container">
		<!-- IF {LIST_TOP_PAGINATION} -->
		<p><span>{PHP.L.Page} {LIST_TOP_CURRENTPAGE} {PHP.L.Of} {LIST_TOP_TOTALPAGES}</span>{LIST_TOP_PAGEPREV}{LIST_TOP_PAGINATION}{LIST_TOP_PAGENEXT}</p>
		<!-- ENDIF -->
	</div>
</div>
<!-- END: MAIN -->