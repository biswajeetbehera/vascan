<#include "inc/common.ftl">
<#assign page={"title":vernacularName.name+ " - " + rc.getMessage("site_title"),"cssList":[rc.getContextUrl("/styles/vascan.css")],"javaScriptIncludeList":
["http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js",
"http://data.canadensys.net/common/js/jquery.tooltip.min.js"],
"jQueryJavaScriptSetupCallList":[]}>

<#assign currentPage="vernacular"/>

<#include "inc/header.ftl">
<#include "inc/menu.ftl">

<h1>${vernacularName.name}</h1>

<p class="sprite sprite-${vernacularName.status?lower_case}">
	${rc.getMessage("vernacular_" + vernacularName.status?lower_case + "_msg1",[vernacularName.vernacularId?c,vernacularName.name,refBuilder(vernacularName.link,vernacularName.reference,vernacularName.referenceShort,true,false,false),rc.getMessage("language_"+vernacularName.language)])}
</p>                                
<p class="sprite sprite-redirect_${vernacularName.taxon.status?lower_case}">
	${rc.getMessage("taxon_" + vernacularName.taxon.status?lower_case + "_no_strong_msg1",[vernacularName.taxon.taxonId?c,vernacularName.taxon.fullScientificName,prefixFrenchRank(rc.getMessage("rank_"+vernacularName.taxon.rank?lower_case))?lower_case,refBuilder(vernacularName.taxon.link,vernacularName.taxon.reference,vernacularName.taxon.referenceShort,false,true,false)])}
</p>
	</div><#-- content -->
</div>

<#assign page = page + {"jQueryJavaScriptSetupCallList": page.jQueryJavaScriptSetupCallList + ["$('.reference').tooltip({showURL: false})"]}>
<#include "inc/footer.ftl">