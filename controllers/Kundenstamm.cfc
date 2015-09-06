<!---
  --- kundenstamm
  --- -----------
  ---
  --- author: Hugh
  --- date:   01.09.15
  --->
<cfcomponent extends="Controller">

	<cffunction name="new">
		<cfset customer = model("customer").new()>
	</cffunction>

	<cffunction name="create">
	    <cfset customer = model("customer").create(params.customer)>
	    <cfset redirectTo(
	        action="new",
	        success="User #customer.K_Kundenname# created successfully."
	    )>
	</cffunction>

	<cffunction name="showAll">
		<cfset customers=model("customer").findAll()>
	</cffunction>

</cfcomponent>