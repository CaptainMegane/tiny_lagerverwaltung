<cfoutput>#Now()#</cfoutput>
hallo?

test der datenbankverbindung:

<cfquery name="testquery" datasource="LagerDB">
select * from test1
</cfquery>

<cfdump var="#testquery#"> 
