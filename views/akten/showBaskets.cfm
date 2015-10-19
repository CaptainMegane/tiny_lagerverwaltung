<cfoutput>
<h1>Alle Kartons

<cfif StructKeyExists(params,"key")>
	von Kunde #baskets.K_Kundenname#
	<cfelse> aller Kunden
	</cfif>
</h1>
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


	#lagerlistTable(result=baskets, linkKey="Kartonnummer",linkController="akten",linkAction="showFiles",linkText="Akten anzeigen")#

	#linkTo(text="Akte einlagern", controller="Akten", action="akte_new", key="basket:" & baskets.Kartonnummer)#


</cfoutput>
