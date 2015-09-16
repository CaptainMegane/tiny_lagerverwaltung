<cfsavecontent  variable="navigation">
<cfoutput>
	<p><li>#linkTo(text="Akten einlagern", controller="akten", action="akte_new")#</li></p>
	<p><li>#linkTo(text="Akten anzeigen", controller="akten", action="showFiles")#</li></p>
	<p><li>#linkTo(text="Akten vernichten", controller="akten", action="einlagerung_new")#</li></p>

	<p><li>#linkTo(text="Kartons anzeigen", controller="akten", action="showBaskets")#</li></p>

</cfoutput>
</cfsavecontent>
<cfset contentFor(leftNav=navigation)>
