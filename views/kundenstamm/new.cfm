<!--- <cfoutput>
<cfform method="post" name="kundenstamm_1">
<table border="0" width="800px">
	<tr>
		<td>Kundenname:</td>
		<td><cfinput name="itKunndenName" type="text" size="50" required="true"></td>
		<td>Erfassungsdatum:</td><td><cfinput name="itDate" type="text" value="#DateFormat(now(),'dd.mm.yyy')#" size="10" validate="eurodate" required="true"></td>
	</tr>
	<tr>
		<td>Kontaktperson:</td>
		<td><cfinput name="itBevollm‰chtigt" type="text" size="50" required="true"></td>
		<td>Branche:</td>
		<td>
			<cfselect name="sbBrance"  required="true">
				<option value="1">Versicherung</option>
				<option value="2">Behˆrde</option>
			</cfselect>
		</td>
	</tr>
	<tr>
		<td>Straﬂe, Hausnummer:</td>
		<td colspan="3"><cfinput name="itStraﬂe" type="text" size="50" required="true"></td>
	</tr>
	<tr>
		<td>PLZ:</td>
		<td colspan="3"><cfinput name="itPLZ" type="text" size="10" validate="zipcode" required="true"></td>
	</tr>
	<tr>
		<td>Ort:</td>
		<td colspan="3"><cfinput name="itOrt" type="text" size="50" required="true"></td>
	</tr>
	<tr>
		<td>Telefon:</td>
		<td colspan="3"><cfinput name="itTelefon" type="text" size="20" required="true"></td>
	</tr>
	<tr>
		<td>Fax:</td>
		<td colspan="3"><cfinput name="itTFax" type="text" size="20" required="true"></td>
	</tr>
	<tr>
		<td>E-Mail:</td>
		<td colspan="3"><cfinput name="itEMail" type="text" size="50" required="true"></td>
	</tr>
<tr>
	<td colspan="4" align="center"><cfinput name="Speichern" type="submit"></td>
</cfform>
</cfoutput> --->


<cfoutput>

<h1>Create a new Customer</h1>


<cfif flashKeyExists("success")>
    <p class="success">#flash("success")#</p>
</cfif>



#startFormTag(action="create")#



    <div>#textField(objectName="customer", property="K_Kundenname", label="Kundenname: ")#</div>

    <div>#textField(objectName="customer", property="K_Straﬂe", label="Straﬂe: ")#</div>

    <div>#submitTag()#</div>

#endFormTag()#

</cfoutput>