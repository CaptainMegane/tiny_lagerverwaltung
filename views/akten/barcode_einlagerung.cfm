
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

function checkKarton(select)
{
	if(select.options[select.selectedIndex].value == '')
	{
		$('#neuerKarton').show();
	}
	else
	{
		$('#neuerKarton').hide();
	}
}

</script>

<h1>Neue Akte einlagern</h1>
<cfoutput>

<cfif flashKeyExists("success")>
    <p class="success">#flash("success")#</p>
</cfif>

#startFormTag(action="create_file", name="file")#

<cfif StructKeyExists(params,"key")>
 	#select(
        label="Kundenname: ", objectName="customer", property="Kundencode",
        options=customers, 	textField="K_Kundenname", valueField="K_Kundencode" ,
		onchange="location='./index.cfm?controller=akten&action=barcode_einlagerung&key=customer:' + this.options[this.selectedIndex].value;")#
		<br>
		<hr>
			  	 <br> #lagerlistTable(baskets)#<br>
		<hr>
		#textField(objectName="barcode_as", property="Code", label="Barcode-Eingabe: " )#<br>
		<hr>
		#textField(objectName="basket", property="Karton", label="Kartonnummer: " )#<br>
		#textField(objectName="file", property="Aktennummer", label="Aktennummer: ")#<br>
		#textField(objectName="basket", property="Lagerort", label="Lagerort: ")#<br>
    #textArea(objectName="file", property="Text", label="Aktenbeschreibung: ")#
		

    <div>#submitTag()#</div>
</cfif>
#endFormTag()#

</cfoutput>

