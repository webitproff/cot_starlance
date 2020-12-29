<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {PAGE_TITLE|ul_transform($this)}
		</ul>
	</div>
</div>
<div class="uk-section uk-background-muted uk-padding-small">
	<div class="uk-container">
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-3-4@m">
				<div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-small uk-border-rounded">
				<h3 class="uk-heading-bullet uk-margin-remove-top uk-link-text">{PAGE_SHORTTITLE}{PAGE_COMMENTS_COUNT}<!-- IF {PHP.usr.isadmin} --><span class="uk-label uk-margin-left">{PAGE_COUNT}</span><!-- ENDIF --></h3>
				<!-- IF {PAGE_DESC} --><span class="uk-text-secondary">{PAGE_DESC}</span><!-- ENDIF -->
				{PAGE_TEXT}
				</div>
			</div>
			<div class="uk-width-1-4@m">
				<!-- IF {PHP.cfg.menu1} -->
					<div class="uk-margin-bottom uk-card uk-card-body uk-card-small uk-background-default uk-border-rounded">
						<ul class="uk-list uk-list-divider">
						{PHP.cfg.menu1}
						</ul>
					</div>
				<!-- ENDIF -->
				<!-- BEGIN: PAGE_ADMIN -->
				<div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-small uk-border-rounded">
				<ul class="uk-list uk-list-divider">
					<!-- IF {PHP.usr.isadmin} -->
					<li><a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li>
					<!-- ENDIF -->
					<li><a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a></li>
					<li>{PAGE_ADMIN_UNVALIDATE}</li>
					<li>{PAGE_ADMIN_EDIT}</li>
					<li>{PAGE_ADMIN_CLONE}</li>
					<li>{PAGE_ADMIN_DELETE}</li>
				</ul>
				</div>
				<!-- END: PAGE_ADMIN -->
			</div>
		</div>
	</div>
</div>
<div class="uk-section uk-background-muted uk-padding-small">
	<div class="uk-container">
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-3-4@m">
				<div class="uk-card uk-margin-small uk-border-rounded">
					<div>{PAGE_COMMENTS_DISPLAY}</div>		
				</div>
			</div>
			<div class="uk-width-1-4@m">
				<div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-small uk-border-rounded">
						<strong>{PHP.L.Tags}:</strong>
<!-- BEGIN: PAGE_TAGS_ROW -->
						<!-- IF {PHP.tag_i} > 0 -->, <!-- ENDIF --><a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
<!-- END: PAGE_TAGS_ROW -->
<!-- BEGIN: PAGE_NO_TAGS -->
						{PAGE_NO_TAGS}
<!-- END: PAGE_NO_TAGS -->
				</div>
			</div>
		</div>
<!-- BEGIN: PAGE_MULTI -->
			<div>
				<h2 class="info">{PHP.L.Summary}:</h2>
				{PAGE_MULTI_TABTITLES}
				<p class="paging">{PAGE_MULTI_TABNAV}</p>
			</div>
<!-- END: PAGE_MULTI -->
	</div>
</div>
<!-- END: MAIN -->