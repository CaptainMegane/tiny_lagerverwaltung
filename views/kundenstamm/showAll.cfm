

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
    $('#customer').DataTable();
} );
</script>
<cfoutput>
<cfif flashKeyExists("success")>
	    <p class="success">#flash("success")#</p>
</cfif>
<table border="1"" id="customer">
	<thead>
	<tr>
		<th>Kundennummer</th>
		<th>Erfassungsdatum</th>
		<th>Name</th>
		<th>Kontaktperson</th>
		<th>Branche</th>
		<th>Straﬂe</th>
		<th>PLZ</th>
		<th>Ort</th>
		<th>Telefon</th>
		<th>Fax</th>
		<th>E-Mail</th>
	</tr>
	</thead>
	<tbody>
	<cfloop query="customers">
		<tr>
		<td>#K_Kundencode#</td>
		<td>#K_Erfassungsdatum#</td>
		<td>#K_Kundenname#</td>
		<td>#K_Kundenvertreter#</td>
		<td>#K_Branche#</td>
		<td>#K_Strasse#</td>
		<td>#K_Postleitzahl#</td>
		<td>#K_Ort#</td>
		<td>#K_Telefonnummer#</td>
		<td>#K_Telefaxnummer#</td>
		<td>	#K_EMail#</td>
		</tr>
	</cfloop>
	</tbody>
	<tfoot></tfoot>
</table>


	#linkTo(text="Neuer Kunde", controller="Kundenstamm", action="new")#
</cfoutput>