<cfoutput>#Now()#</cfoutput>
hallo?

test der datenbankverbindung:

<cfquery name="testquery" datasource="LagerDB">
select * from Kunden 
</cfquery>

<cfdump var="#testquery#"> 
