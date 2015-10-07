
<h1>Generierte Codes folgen:

</h1>
<cfoutput>
<cfif flashKeyExists("success")>
	    <p class="success">#flash("success")#</p>
</cfif>
<br>
<cfimage action="writeToBrowser" source="#barcodeImage#" format="jpg">
<br>
#barcode#

</cfoutput>
