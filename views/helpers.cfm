<!--- Place helper functions here that should be available for use in all view pages of your application. --->

<cffunction name="includeNavigation">

	<cfoutput>
	<h5>
		&nbsp; &nbsp; &nbsp;
		#linkTo(text="Kundenverwaltung", controller="Kundenstamm", action="showAll")#
		&nbsp; &nbsp; &nbsp;
		#linkTo(text="Karton- & Aktenverwaltung", controller="Akten", action="einlagerung_new")#
		&nbsp; &nbsp; &nbsp;
		#linkTo(text="Akten einlagern", controller="Akten", action="akte_new")#
		&nbsp; &nbsp; &nbsp;
		#linkTo(text="Barcodes drucken", controller="barcodes", action="generateKartoncodes")#
	</h5>

	</cfoutput>



</cffunction>

<cffunction name="lagerlistTable">
	<cfargument   name="result" required="yes">
	<cfargument   name="linkKey" required="no">
	<cfargument   name="linkController" required="no">
	<cfargument   name="linkAction" required="no">
	<cfargument   name="linkText" required="no">
	<cfargument   name="keyPrefix" required="no" default="">


	<cfoutput>
	<table border="1" id="table">
		<thead>
			<tr>
				<cfloop list="#result.columnList#" index="col">
					<th>#col#</th>
				</cfloop>
				<cfif isDefined("linkKey")>
					<th>&nbsp;</th>
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
					<th>#linkTo(text=linkText, controller=linkController, action=linkAction, key=keyPrefix & result[linkKey][currentrow])#</th>
				</cfif>


			</tr>
			</cfloop>
		</tbody>
		<tfoot>
		</tfoot>
	</table>
	</cfoutput>
</cffunction>
