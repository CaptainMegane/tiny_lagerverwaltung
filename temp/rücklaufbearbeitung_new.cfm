<cfoutput>
<cfform method="post" name="kundenstamm_1">
	<table border="0" width="800px">
		<tr>
			<td>Auftragsnummer:</td>
			<td><cfinput name="itAuftragsnummer" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Aktennummer:</td>
			<td><cfinput name="itAktennummer" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Kundennummer:</td>
			<td><cfinput name="itKundennummer" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Kunden-Code:</td>
			<td><cfinput name="itKundenCode" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Lagerort:</td>
			<td><cfinput name="itLagerort" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Kartonnummer:</td>
			<td><cfinput name="itKartonnummer" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Menge:</td>
			<td><cfinput name="itMenge" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Code:</td>
			<td><cfinput name="itCode" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Rücknahmeart:</td>
			<td><cfinput name="itRücknahmeart" type="text" size="50" required="true"></td>
		</tr>
	</table>
</cfform>
</cfoutput>