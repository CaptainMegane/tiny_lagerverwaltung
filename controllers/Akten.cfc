<!---
  --- kundenstamm
  --- -----------
  ---
  --- author: Hugh
  --- date:   01.09.15
  --->
<cfcomponent extends="Controller">

	<cffunction name="einlagerung_new">
		<cfinclude template="../views/akten/navigation.cfm">
		<cfscript>
			if (StructKeyExists(params,"key"))
			{
				customers=model("customer").findOneByK_Kundencode(key=params.key,returnAs='query');
			}
			else
			{
				customers=model("customer").findAll();
			}

		</cfscript>
		<cfset basket = model("basket").new()>
		<cfset basket.Erstellt="#DateFormat(now())# #TimeFormat(now())#">



	</cffunction>

	<cffunction name="akte_new">
        <cfinclude template="../views/akten/navigation.cfm">
		<cfset customer=model("customer").new()>
		<cfset customers=model("customer").findAll()>
		<cfset file = model("basket").new()>

		
		<cfif StructKeyExists(params,"key")>
			
			<cfscript>
				var Prefix=ListGetAt(params,"=",1);
				var value=ListGetAt(params,"=",2);
			switch (prefix) {
				/* Baset wurde zuerst ausgewählt */
				case "basket":
					baskets=model("basket").findOneByKartonnummer(key=value,returnAs='query');
					customers=model("customer").findAllByK_Kundencode(baskets.Kundencode);
					break;
				case "customer":
					/* customer wurde zuerst ausgewählt 
					todo: nur wenn kunde manuell ausgewählt customer suchen und baskets suchen */
					
					customers= model("customer").findOneByK_Kundencode(key=value,returnAs='query');
					baskets=model("basket").findAllByKundencode(customers.K_Kundencode);
					break;
			}
						

			</cfscript>
			<cfset file.Eindatum="#DateFormat(now())# #TimeFormat(now())#">
		
		</cfif>

	</cffunction>

	<cffunction name="create_basket">
        <cfinclude template="../views/akten/navigation.cfm">
	    <cfset basket = model("basket").create(params.basket)>
	    <cfset redirectTo(
	        action="einlagerung_new",
	        success="Karton #basket.Kartonnummer# auf Lagerplatz #basket.Lagerort# erfolgreich angelegt."
	    )>

	</cffunction>

	<cffunction name="create_file">
        <cfinclude template="../views/akten/navigation.cfm">
	    <cfset file = model("file").create(params.file)>
	    <cfset redirectTo(
	        action="akte_new",
	        success="Akte #file.Aktennummer# in Karton #file.Karton# erfolgreich angelegt."
	    )>

	</cffunction>

	<cffunction name=showBaskets>
        <cfinclude template="../views/akten/navigation.cfm">


		<cfif StructKeyExists(params,"key")>
			<cfset baskets = model("basket").findAllByKundencode(key=params.key,select="KARTONNUMMER,customers.K_Kundenname,LAGERORT",include="customers")>
		<cfelse>
			<cfset baskets = model("basket").findAll(select="KARTONNUMMER,customers.K_Kundenname,LAGERORT",include="customers")>
		</cfif>
	</cffunction>

	<cffunction name=showFiles>
		<cfinclude template="../views/akten/navigation.cfm">
		<cfif StructKeyExists(params,"key")>
			<cfset files = model("file").findAllByKarton(key=params.key,select="AKTENNUMMER,EINDATUM,KARTON,VERNICHT_DAT,VERNICHTET,VERNICHTETAM,TEXT")>
		<cfelse>
			<cfset files = model("file").findAll(select="AKTENNUMMER,EINDATUM,KARTON,VERNICHT_DAT,VERNICHTET,VERNICHTETAM,TEXT")>
		</cfif>
	</cffunction>


</cfcomponent>
