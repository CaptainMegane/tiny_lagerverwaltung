<cfoutput>
<cfform method="post" name="aktenvernichtung_1">
	<table border="0" width="800px">
		<tr>
			<td>Datum:</td>
			<td><cfinput name="itDatum" type="text" value="#DateFormat(now(),'dd.mm.yyy')#" size="10" validate="eurodate" required="true"></td>
		</tr>
		<tr>
			<td>Kundennummer:</td>
			<td><cfinput name="itKundennummer" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Kundenname:</td>
			<td><cfinput name="itKundenname" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Abteilung - Code:</td>
			<td><cfinput name="itAbteilung" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Abteilung:</td>
			<td><cfinput name="itAbteilung" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Lagerort:</td>
			<td><cfinput name="itLagerort" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Zur Vernichtung anstehende Akten:</td>
			<td><cfinput name="itZurVernichtungAnstehend" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Akten zur Vernichtung freigegeben:</td>
			<td><cfinput name="itZurVernichtungFreigegeben" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Nachdruck vernichten - Protokoll:</td>
			<td><cfinput name="itProtokoll" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Nachdruck vernichten - Lager:</td>
			<td><cfinput name="itLager" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Für Kunden vernichtete Akten:</td>
			<td><cfinput name="itKundenaktenVernichtet" type="text" size="50" required="true"></td>
		</tr>
	</table>
</cfform>
</cfoutput>