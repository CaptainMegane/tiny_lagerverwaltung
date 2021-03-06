


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
    $('#barcode_field-Code').focus();
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

function checkBarcodeField(text)
{
	//alert("erkannter text: " + text + "erstes zeichen: " + text.substring(0,1));

	if (text.substring(0,1) == "A")
	{
		//alert("a gefunden");
		$('#file-Aktennummer').val(text.substring(1,text.length));
	}
	else
	if (text.substring(0,1) == "K")
	{
		//alert("a gefunden");
		$('#file-Karton').val(text.substring(1,text.length));
	}
	$('#barcode_field-Code').val("");
}

</script>

<h1>Neue Akte einlagern</h1>
<cfoutput>

<cfif flashKeyExists("success")>
    <p class="success"><b>#flash("success")#</b></p>
    <hr>
</cfif>

#startFormTag(action="create_file_new", name="file", onsubmit="mySubmit()")#

<cfif StructKeyExists(params,"key")>
 	#select(
        label="Kundenname: ", objectName="customer", property="Kundencode",
        options=customers, 	textField="K_Kundenname", valueField="K_Kundencode" ,
		onchange="location='./index.cfm?controller=akten&action=barcode_einlagerung&key=customer:' + this.options[this.selectedIndex].value;")#
		<br>
		<hr>
		#textField(objectName="barcode_field", property="Code", label="Barcode-Eingabe: ", onkeyup="if(event.keyCode==13) checkBarcodeField(this.value)" )#<br>
		<hr>
		#textField(objectName="file", property="Karton", label="Kartonnummer: ", readonly="true" )#<br>
		#textField(objectName="basket", property="Lagerort", label="Lagerort (Wird nur gespeichert, wenn neuer Karton!): " )# <br>
		#textField(objectName="file", property="Aktennummer", label="Aktennummer: ", readonly="true")#<br>
		#textArea(objectName="file", property="Text", label="Aktenbeschreibung: ")#
		&nbsp;<input type="button" onclick="submit()" name="button1" value="Absenden!">
		<br>
		<br>
		<hr>
		<br> #lagerlistTable(baskets)#<br>
		
    <cfelse>

 	#select(includeBlank="-Kunde ausw&auml;hlen-",
        label="Kundenname: ", objectName="customer", property="Kundencode",
        options=customers, 	textField="K_Kundenname", valueField="K_Kundencode" ,
		onchange="location='./index.cfm?controller=akten&action=barcode_einlagerung&key=customer:' + this.options[this.selectedIndex].value;")#

</cfif>
#endFormTag()#

</cfoutput>

