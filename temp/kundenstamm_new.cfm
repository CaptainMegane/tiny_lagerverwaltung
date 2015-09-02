<cfoutput>
<cfform method="post" name="kundenstamm_1">
	<table border="0" width="800px">
		<tr>
			<td>Kundenname:</td>
			<td><cfinput name="itKunndenname" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Erfassungsdatum:</td>
			<td><cfinput name="itErfassungsdatum" type="text" value="#DateFormat(now(),'dd.mm.yyy')#" size="10" validate="eurodate" required="true"></td>
		</tr>
		<tr>
			<td>Kontaktperson:</td>
			<td><cfinput name="itKontaktperson" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Branche:</td>
			<td>
				<cfselect name="sbBranche"  required="true">
					<option value="1">Versicherung</option>
					<option value="2">Behörde</option>
				</cfselect>
			</td>
		</tr>
		<tr>
			<td>Straße, Hausnummer:</td>
			<td><cfinput name="itStraße" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>PLZ:</td>
			<td><cfinput name="itPLZ" type="text" size="10" validate="zipcode" required="true"></td>
		</tr>
		<tr>
			<td>Ort:</td>
			<td><cfinput name="itOrt" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Telefon:</td>
			<td><cfinput name="itTelefon" type="text" size="20" required="true"></td>
		</tr>
		<tr>
			<td>Fax:</td>
			<td><cfinput name="itFax" type="text" size="20" required="true"></td>
		</tr>
		<tr>
			<td>E-Mail:</td>
			<td><cfinput name="itEMail" type="text" size="50" required="true"></td>
		</tr>
	</table>
</cfform>
</cfoutput>