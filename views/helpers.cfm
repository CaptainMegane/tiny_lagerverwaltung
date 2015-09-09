<!--- Place helper functions here that should be available for use in all view pages of your application. --->

<cffunction name="includeNavigation">

	<cfoutput>
	<p>#linkTo(text="Kundenverwaltung", controller="Kundenstamm", action="showAll")#</p>

	<p>#linkTo(text="Neuen Karton erstellen (Kunde x)", controller="Akten", action="einlagerung_new")#</p>

	<p>#linkTo(text="Neue Akte einlagern (Kunde x,Karton y)", controller="Akten", action="akte_new")#</p>


	</cfoutput>



</cffunction>

<cffunction name="lagerlistTable">
	<cfargument   name="result" required="yes">
	<cfargument   name="linkKey" required="no">
	<cfargument   name="linkController" required="no">
	<cfargument   name="linkAction" required="no">
	<cfargument   name="linkText" required="no">


	<cfoutput>
	<table border="1">
		<thead>
			<tr>
				<cfloop list="#result.columnList#" index="col">
					<th>#col#</th>
				</cfloop>
				<cfif isDefined("linkField")>
					<th></th>
				</cfif>
			</tr>
		</thead>
		<tbody>

			<cfloop query="result">
			<tr>
				<cfloop list="#result.columnList#" index="col">

				<td>#result[col][currentrow]#</td>
				</cfloop>
				<cfif isDefined("linkKey")>
					<th>#linkTo(text=linkText, controller=linkController, action=linkAction, key=result[linkKey][currentrow])#</th>
				</cfif>


			</tr>
			</cfloop>
		</tbody>
		<tfoot>
		</tfoot>
	</table>
	</cfoutput>
</cffunction>