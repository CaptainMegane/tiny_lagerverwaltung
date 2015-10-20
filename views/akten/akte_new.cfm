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
	if(select.options[select.selectedIndex].value == 'Neuer Karton')
	{
		alert('neu');
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
		onchange="location='./index.cfm?controller=akten&action=akte_new&key=customer:' + this.options[this.selectedIndex].value;")#
		<br>
		<hr>
			  	 <br> #lagerlistTable(baskets)#<br>
		<hr>
		<cfif baskets.recordCount GT 0>
	 		#select(includeBlank="Neuer Karton",
				 label="Karton: ", objectName="file", property="Karton",
				  options=baskets_select, 	textField="Kartonnummer", valueField="Kartonnummer",
				  onChange="checkKarton(this)"

	  	  )#
	  	  <br>
<div id="neuerKarton" style="display:true">
<hr>
	<h6>Nur ausf&uuml;llen, wenn "Neuer Karton" gew&auml;hlt!</h6>
		#textField(objectName="basket", property="Kartonnummer", label="Kartonnummer: ")#<br>
		#textField(objectName="basket", property="Lagerort", label="Lagerort: ")#
		<br>
<hr>
</div>


	  	<cfelse>
	  		<p><br>Noch kein Karton für den Kunden vorhanden!</p>
	  		<p>#linkTo(text="Karton<br>erstellen", controller="Akten", action="einlagerung_new", key=customers.K_Kundencode)#</p>
	  	</cfif>
	<cfelse>

 	#select(includeBlank="-Kunde ausw&auml;hlen-",
        label="Kundenname: ", objectName="customer", property="Kundencode",
        options=customers, 	textField="K_Kundenname", valueField="K_Kundencode" ,
		onchange="location='./index.cfm?controller=akten&action=akte_new&key=customer:' + this.options[this.selectedIndex].value;")#

</cfif>
	#textArea(objectName="file", property="Text", label="Aktenbeschreibung: ")#

    <div>#submitTag()#</div>

#endFormTag()#

</cfoutput>

