<cfif flashKeyExists("success")>
    <p class="success">#flash("success")#</p>
</cfif>

<cfdump var="#params#">