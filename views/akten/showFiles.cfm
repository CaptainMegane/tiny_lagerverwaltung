<cfoutput>
<h1>Akten
	<cfif StructKeyExists(params,"key")> in Karton #files.Karton#
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

	#lagerlistTable(files)#
<!--- 	#linkTo(text="Akte einlagern", controller="Akten", action="akte_new", key="basket:" & basketid)# --->
</cfoutput>