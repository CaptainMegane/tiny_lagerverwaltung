<!--- Place helper functions here that should be available for use in all view pages of your application. --->

<cffunction name="includeNavigation">

	<cfoutput>
	#linkTo(text="Kundenverwaltung", controller="Kundenstamm", action="showAll")#

	#linkTo(text="Neuen Karton erstellen (Kunde x)", controller="Akten", action="einlagerung_new")#

	#linkTo(text="Neue Akte einlagern (Kunde x,Karton y)", controller="Akten", action="akte_new")#


	</cfoutput>

</cffunction>