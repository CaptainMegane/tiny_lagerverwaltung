
<cfoutput>

<h1>Neuen Kunden anlegen</h1>


<cfif flashKeyExists("success")>
    <p class="success">#flash("success")#</p>
</cfif>



#startFormTag(action="create")#



    #textField(objectName="customer", property="K_Kundenname", label="Kundenname: ")#

	#select(objectName="customer",property="Branche", label="Branche: " ,options=branches)#

	#textField(objectName="customer", property="K_Kundenvertreter", label="Kontaktperson: ")#

    #textField(objectName="customer", property="K_Straﬂe", label="Straﬂe, Hausnummer: ")#

	#textField(objectName="customer", property="K_PLZ", label="PLZ: ")#

    #textField(objectName="customer", property="K_Ort", label="Ort: ")#

	#textField(objectName="customer", property="K_Telefonnummer", label="Telefon: ")#

	#textField(objectName="customer", property="K_Telefaxnummer", label="Fax: ")#

	#textField(objectName="customer", property="K_EMail", label="E-Mail: ")#


    <div>#submitTag()#</div>

#endFormTag()#

</cfoutput>
