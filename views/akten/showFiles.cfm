


<cfoutput>
<h1>Akten in Karton #files.Karton#</h1>
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

	#lagerlistTable(files)#

</cfoutput>