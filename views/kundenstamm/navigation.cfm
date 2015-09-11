<cfsavecontent  variable="navigation">
<cfoutput>
	<p><li>#linkTo(text="Kunden anzeigen", controller="Kundenstamm", action="showAll")#</li></p>
	<p><li>#linkTo(text="Kunden anlegen", controller="Kundenstamm", action="new")#</li></p>
</cfoutput>
</cfsavecontent>
<cfset contentFor(leftNav=navigation)>