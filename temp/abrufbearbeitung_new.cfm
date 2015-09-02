<cfoutput>
<cfform method="post" name="kundenstamm_1">
	<table border="0" width="800px">
		<tr>
			<td>Kundenname:</td>
			<td><cfinput name="itKunndenName" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Kundennummer:</td>
			<td><cfinput name="itKundennummer" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Abrufer:</td>
			<td><cfinput name="itAbrufer" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Abrufer - Kennnummer:</td>
			<td><cfinput name="itKennnummer" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Aktennummer:</td>
			<td><cfinput name="itAktennummer" type="text" size="50" required="true"></td>
		</tr>
	</table>
</cfform>
</cfoutput>