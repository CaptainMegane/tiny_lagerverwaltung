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

	 #select(
        label="Karton: ", objectName="file", property="Karton",
        options=baskets, 	textField="Kartonnummer", valueField="Kartonnummer"

    )#
<cfelse>

 	#select(includeBlank="-Kunde ausw&auml;hlen-",
        label="Kundenname: ", objectName="customer", property="Kundencode",
        options=customers, 	textField="K_Kundenname", valueField="K_Kundencode" ,
		onchange="location='index.cfm/akten/akte_new/customer=' + this.options[this.selectedIndex].value;")#

	<cfif isDefined("params.customer")>

 		#select(
			 label="Karton: ", objectName="file", property="Karton",
			  options=baskets, 	textField="Kartonnummer", valueField="Kartonnummer"

  	  )#
	</cfif>
</cfif>
	#textArea(objectName="file", property="Text", label="Aktenbeschreibung: ")#

    <div>#submitTag()#</div>

#endFormTag()#

</cfoutput>

umlaut-test:ä ö ü