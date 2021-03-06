<!---
  --- kundenstamm
  --- -----------
  --- alles rund um die kunden
  --- author: Hugh
  --- date:   01.09.15
  --->
<cfcomponent extends="Controller">

	<cffunction name="new">
		<cfinclude template="../views/kundenstamm/navigation.cfm">

		<cfset branches=model("Branche").findAll()>
		<cfset customer=model("customer").new()>
	</cffunction>

	<cffunction name="create">
        <cfinclude template="../views/kundenstamm/navigation.cfm">
	    <cfset customer=model("customer").create(params.customer)>
	    <cfset redirectTo(
	        action="showAll",
	        success="User #customer.K_Kundenname# created successfully."
	    )>
	</cffunction>

	<cffunction name="update">
        <cfinclude template="../views/kundenstamm/navigation.cfm">
   		<cfset customer = model("customer").findByKey(params.customer.K_Kundencode)>
	    <cfset customer.update(params.customer)>
	    <cfset redirectTo(
	        action="showAll",
	        success="Kunde #params.customer.K_Kundenname# edited successfully."
	    )>
	</cffunction>

	<cffunction name="edit">
		<cfinclude template="../views/kundenstamm/navigation.cfm">
		<cfset branches=model("Branche").findAll()>
		<cfset customer=model("customer").findOneByK_Kundencode(key=key,include="Branches", select="customers.*, branches.branche AS br")>
	</cffunction>

	<cffunction name="showAll">
        <cfinclude template="../views/kundenstamm/navigation.cfm">
		<cfset customers=model("customer").findAll(include="Branches", select="customers.*, branches.branche AS br")>
	</cffunction>

</cfcomponent>