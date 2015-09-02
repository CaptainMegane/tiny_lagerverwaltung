<cfoutput>
<cfform method="post" name="stammdaten_1">
	<table border="0" width="800px">
		<tr>
			<td>Branchenverwaltung:</td>
			<td><cfinput name="itBranchenverwaltung" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Lagerorte:</td>
			<td><cfinput name="itLagerorte" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Kartongrößen:</td>
			<td><cfinput name="itKartongrößen" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Mitarbeiter:</td>
			<td><cfinput name="itMitarbeiter" type="text" size="50" required="true"></td>
		</tr>
		<tr>
			<td>Zugangsberechtigung:</td>
			<td><cfinput name="itZugangsberechtigung" type="text" size="50" required="true"></td>
		</tr>
	</table>
</cfform>
</cfoutput>