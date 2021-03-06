
<h1>Kunden anzeigen</h1>

<cfoutput>
<!-- jQuery -->
<!-- DataTables CSS -->
#styleSheetLinkTag("jquery.dataTables.css")#

#javaScriptIncludeTag("DataTables-1.10.9/jquery.js")#

<!-- DataTables -->
#javaScriptIncludeTag("DataTables-1.10.9/jquery.dataTables.js")#
</cfoutput>
<script type="text/javascript">

$(document).ready( function () {
    $('#table').DataTable();
} );
</script>
<cfoutput>
<cfif flashKeyExists("success")>
	    <p class="success">#flash("success")#</p>
</cfif>
<table border="1" id="table" >
	<thead>
	<tr>
		<th>No.</th>
		<!--- <th>Erfassungsdatum</th> --->
		<th>Name</th>
		<th>Kontakt</th>
		<th>Branche</th>
		<th>Stra&szlig;e</th>
		<th>PLZ</th>
		<th>Ort</th>
		<th>Telefon</th>
		<th>Fax</th>
		<th>E-Mail</th>
		<th></th>
		<th></th>
		<th></th>
		<th></th>
	</tr>
	</thead>
	<tbody>
	<cfloop query="customers">
		<tr>
		<td>#K_Kundencode#</td>
		<!--- <td>#K_Erfassungsdatum#</td> --->
		<td>#K_Kundenname#</td>
		<td>#K_Kundenvertreter#</td>
		<td>#BR#</td>
		<td>#K_Strasse#</td>
		<td>#K_Postleitzahl#</td>
		<td>#K_Ort#</td>
		<td>#K_Telefonnummer#</td>
		<td>#K_Telefaxnummer#</td>
		<td>#K_EMail#</td>
		<td>#linkTo(text="edit", controller="Kundenstamm", action="edit", key=K_Kundencode)#</td>
		<td>#linkTo(text="del", controller="Kundenstamm", action="edit", key=K_Kundencode)#</td>
		<td>#linkTo(text="Karton<br>erstellen", controller="Akten", action="einlagerung_new", key=K_Kundencode)#</td>
		<td>#linkTo(text="Kartons<br> anzeigen", controller="Akten", action="showBaskets", key=K_Kundencode)#</td>

		</tr>
	</cfloop>
	</tbody>
	<tfoot></tfoot>
</table>


	#linkTo(text="Neuer Kunde", controller="Kundenstamm", action="new")#
</cfoutput>
