
<cfif flashKeyExists("success")>
	<cfoutput>
	    <p class="success">#flash("success")#</p>
	</cfoutput>
</cfif>




<cfloop query="customers">
	<cfoutput>
	#K_Kundencode# #K_Erfassungsdatum#	#K_Kundenname#	#K_Kundenvertreter#	#K_Branche#	#K_Straﬂe#	#K_Postleitzahl# #K_Ort# #K_Telefonnummer#	#K_Telefaxnummer#
	</cfoutput>
</cfloop>

<cfoutput>
#linkTo(text="Neuer Kunde", controller="Kundenstamm", action="new")#
</cfoutput>
