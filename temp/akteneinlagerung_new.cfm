<cfoutput>
<cfform method="post" name="akteneinlagerung_1">
	<table border="0" width="800px">
		<tr>
			<td>Kundenname:</td>
			<td><cfinput name="itKundenName" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Kundennummer:</td>
			<td><cfinput name="itKundennummer" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Liste - Nummer:</td>
			<td><cfinput name="itLNummer" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Kartonnummer:</td>
			<td><cfinput name="itKartonnummer" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Lagerort:</td>
			<td><cfinput name="itLagerort" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Abteilung:</td>
			<td><cfinput name="itAbteilung" type="text" size="50" required="true"></td>
		</tr>
	</table>
</cfform>
</cfoutput>