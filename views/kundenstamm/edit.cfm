
<cfoutput>

<h1>Kunde #customer.K_Kundenname# bearbeiten</h1>


<cfif flashKeyExists("success")>
    <p class="success">#flash("success")#</p>
</cfif>



#startFormTag(action="update")#


	#hiddenField(objectName="customer", property="K_Kundencode")#

    #textField(objectName="customer", property="K_Kundenname", label="Kundenname: ")#

	#select(objectName="customer",property="Branche", label="Branche: " ,options=branches)#

	#textField(objectName="customer", property="K_Kundenvertreter", label="Kontaktperson: ")#

    #textField(objectName="customer", property="K_Strasse", label="Stra&szlig;e, Hausnummer: ")#

	#textField(objectName="customer", property="K_PLZ", label="PLZ: ")#

    #textField(objectName="customer", property="K_Ort", label="Ort: ")#

	#textField(objectName="customer", property="K_Telefonnummer", label="Telefon: ")#

	#textField(objectName="customer", property="K_Telefaxnummer", label="Fax: ")#

	#textField(objectName="customer", property="K_EMail", label="E-Mail: ")#


    <div>#submitTag()#</div>

#endFormTag()#

</cfoutput>
