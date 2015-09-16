<cfoutput>

<h1>Neue Akte einlagern</h1>


<cfif flashKeyExists("success")>
    <p class="success">#flash("success")#</p>
</cfif>

#startFormTag(action="create_file", name="file")#

<cfif StructKeyExists(params,"key")>
 	#select(
        label="Kundenname: ", objectName="customer", property="Kundencode",
        options=customers, 	textField="K_Kundenname", valueField="K_Kundencode" ,
		onchange="location='index.cfm/akten/akte_new/customer=' + this.options[this.selectedIndex].value;")#
		<cfif baskets.recordCount GT 0>
	 		#select(
				 label="Karton: ", objectName="file", property="Karton",
				  options=baskets, 	textField="Kartonnummer", valueField="Kartonnummer"

	  	  )#
	  	<cfelse>
	  		<p><br>Noch kein Karton für den Kunden vorhanden!</p>
	  		<p>#linkTo(text="Karton<br>erstellen", controller="Akten", action="einlagerung_new", key=customers.K_Kundencode)#</p>
	  	</cfif>
	<cfelse>

 	#select(includeBlank="-Kunde ausw&auml;hlen-",
        label="Kundenname: ", objectName="customer", property="Kundencode",
        options=customers, 	textField="K_Kundenname", valueField="K_Kundencode" ,
		onchange="location='index.cfm/akten/akte_new/customer=' + this.options[this.selectedIndex].value;")#

</cfif>
	#textArea(objectName="file", property="Text", label="Aktenbeschreibung: ")#

    <div>#submitTag()#</div>

#endFormTag()#

</cfoutput>

