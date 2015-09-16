<cfoutput>

<h1>Neuen Karton anlegen</h1>


<cfif flashKeyExists("success")>
    <p class="success">#flash("success")#</p>
</cfif>



#startFormTag(action="create_basket")#



		<cfif StructKeyExists(params,"key")>

    		#select(label="Kundenname: ", objectName="basket", property="Kundencode",
	       	 options=customers, 	textField="K_Kundenname", valueField="K_Kundencode")#

		<cfelse>

	 		#select(
    	    label="Kundenname: ", objectName="basket", property="Kundencode",
	       	 options=customers, 	textField="K_Kundenname", valueField="K_Kundencode")#

    	</cfif>


	Hinweis: Kartonnummer wird vom System vergeben!
	<!--- #textField(objectName="basket", property="Kartonnummer", label="Kartonnummer: ")# --->

	#textField(objectName="basket", property="Lagerort", label="Lagerort: ")#

	#textField(objectName="basket", property="Erstellt", label="Erstellt: ")#


    <div>#submitTag()#</div>

#endFormTag()#

</cfoutput>