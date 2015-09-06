<cfoutput>
	<cfif flashKeyExists("success")>
	    <p class="success">#flash("success")#</p>
	</cfif>
	
	<cfloop query="customers">
		#K_Kundencode#
		#K_Erfassungsdatum#
		#K_Kundenname#
		#K_Kundenvertreter#
		#K_Branche#
		#K_Straﬂe#
		#K_Postleitzahl#
		#K_Ort#
		#K_Telefonnummer#
		#K_Telefaxnummer#
	</cfloop>
	
	#linkTo(text="Neuer Kunde", controller="Kundenstamm", action="new")#
</cfoutput>