<!---
  --- kundenstamm
  --- -----------
  ---
  --- author: Hugh
  --- date:   01.09.15
  --->
<cfcomponent extends="Controller">

	<cffunction name="einlagerung_new">

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

		<cfset customer=model("customer").new()>
		<cfset customers=model("customer").findAll()>
		<cfset file = model("basket").new()>


		<cfif StructKeyExists(params,"key")>
			<cfset baskets=model("basket").findOneByKartonnummer(key=params.key,returnAs='query')>
			<cfset customers=model("customer").findAllByK_Kundencode(baskets.Kundencode)>


		<cfelse>
<!---todo: nur wenn kunde manuell ausgewählt customer suchen und baskets suchen>--->
			<cfif isDefined("params.customer")>

				<cfset customers= model("customer").findOneByK_Kundencode(params.customer)>
				<cfset baskets=model("basket").findAllByKundencode(params.customer)>

			<cfset file.Eindatum="#DateFormat(now())# #TimeFormat(now())#">
			</cfif>
		</cfif>

	</cffunction>

	<cffunction name="create_basket">

	    <cfset basket = model("basket").create(params.basket)>
	    <cfset redirectTo(
	        action="einlagerung_new",
	        success="Karton #basket.Kartonnummer# auf Lagerplatz #basket.Lagerort# erfolgreich angelegt."
	    )>

	</cffunction>

	<cffunction name="create_file">

	    <cfset file = model("file").create(params.file)>
	    <cfset redirectTo(
	        action="akte_new",
	        success="Akte #file.Aktennummer# in Karton #file.Karton# erfolgreich angelegt."
	    )>

	</cffunction>

	<cffunction name=showBaskets>

		<cfset baskets = model("basket").findAllByKundencode(key=params.key,select="KARTONNUMMER,customers.K_Kundenname,LAGERORT",include="customers")>
	</cffunction>

	<cffunction name=showFiles>
		<cfset files = model("file").findAllByKarton(key=params.key,select="AKTENNUMMER,EINDATUM,KARTON,VERNICHT_DAT,VERNICHTET,VERNICHTETAM,TEXT")>
	</cffunction>


</cfcomponent>