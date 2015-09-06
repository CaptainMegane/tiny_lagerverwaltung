<cfif flashKeyExists("success")>
	<cfoutput>
	    <p class="success">#flash("success")#</p>
	</cfoutput>
</cfif>

<cfoutput>
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
</cfoutput>

<cfoutput>
	#linkTo(text="Neuer Kunde", controller="Kundenstamm", action="new")#
</cfoutput>