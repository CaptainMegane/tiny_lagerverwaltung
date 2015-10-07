
<h1>
	Barcodes generieren
</h1>
<cfoutput>

<cfif flashKeyExists("success")>
	    <p class="success">#flash("success")#</p>
</cfif>

#startFormTag(action="showPirntPage")#

    #textField(objectName="barcode", property="code", label="Zeichenfolge: ")#

	  <div>#submitTag()#</div>
#endFormTag()#
</cfoutput>
