
<h1>
	Barcodes generieren
</h1>
<cfoutput>

<cfif flashKeyExists("success")>
	    <p class="success">#flash("success")#</p>
</cfif>

#startFormTag(action="showPirntPage")#

	#select( 
         label="Barcdoe Typ (Akte oder Karton): ", objectName="barcode", property="barcode_group", 
         options="barcode_type", textField="type", valueField="type")#

    #textField(objectName="barcode", property="anzahl", label="Anzahl Barcodes: ")#

	  <div>#submitTag()#</div>
#endFormTag()#
</cfoutput>
