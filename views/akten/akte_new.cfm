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
		<td><cfinput name="itBevollmächtigt" type="text" size="50" required="true"></td>
		<td>Branche:</td>
		<td>
			<cfselect name="sbBrance"  required="true">
				<option value="1">Versicherung</option>
				<option value="2">Behörde</option>
			</cfselect>
		</td>
	</tr>
	<tr>
		<td>Straße, Hausnummer:</td>
		<td colspan="3"><cfinput name="itStraße" type="text" size="50" required="true"></td>
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

<h1>Neue Akte einlagern</h1>


<cfif flashKeyExists("success")>
    <p class="success">#flash("success")#</p>
</cfif>

<cfdump var="#params#">

#startFormTag(action="create_file", name="file")#

<!---todo: nur wenn kunde manuell ausgewählt customer suchen und baskets suchen>--->
<!--- todo: das muss noch an den controller angepasst werden, Entscheidung anhand keyPrefix --->
<cfif StructKeyExists(params,"key")>

 	#select(
        label="Kundenname: ", objectName="customer", property="Kundencode",
        options=customers, 	textField="K_Kundenname", valueField="K_Kundencode" ,
		onchange="location='index.cfm/akten/akte_new/customer=' + this.options[this.selectedIndex].value;")#

	 #select(
        label="Karton: ", objectName="file", property="Karton",
        options=baskets, 	textField="Kartonnummer", valueField="Kartonnummer"

    )#
<cfelse>
        
 	#select(includeBlank="-Kunde auswählen-",
        label="Kundenname: ", objectName="customer", property="Kundencode",
        options=customers, 	textField="K_Kundenname", valueField="K_Kundencode" ,
		onchange="location='index.cfm/akten/akte_new/customer=' + this.options[this.selectedIndex].value;")#

	<cfif isDefined("params.customer")>

 		#select(
			 label="Karton: ", objectName="file", property="Karton",
			  options=baskets, 	textField="Kartonnummer", valueField="Kartonnummer"

  	  )#

	</cfif>
huhu3
</cfif>
	#textArea(objectName="file", property="Text", label="Aktenbeschreibung: ")#

    <div>#submitTag()#</div>

#endFormTag()#

</cfoutput>
