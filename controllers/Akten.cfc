<!---
  --- Akten
  --- -----------
  --- alles rund um die akten
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
				var prefix=ListFirst(params.key,":");
				var value=ListLast(params.key,":");
			switch (prefix) {
				/* Baset wurde zuerst ausgewählt */
				case "basket":
					baskets=model("basket").findOneByKartonnummer(key=value,select="Kundencode,customers.K_Kundenname as Kunde,KARTONNUMMER,LAGERORT,files.Aktennummer,files.text",include="customers,files",returnAs='query');
					baskets_select=model("basket").findAllByKundencode(key=value,select="KARTONNUMMER",group="Kartonnummer",returnAs='query');
					customers=model("customer").findAllByK_Kundencode(baskets.Kundencode);
					basket = model("basket").new();
					break;
				case "customer":
					/* customer wurde zuerst ausgewählt*/


					customers= model("customer").findOneByK_Kundencode(key=value,returnAs='query');
					baskets= model("basket").findAllByKundencode(key=customers.K_Kundencode,select="customers.K_Kundenname as Kunde,KARTONNUMMER,LAGERORT,files.Aktennummer,files.text",include="customers,files");
					baskets_select=model("basket").findAllByKundencode(key=customers.K_Kundencode,select="KARTONNUMMER",group="Kartonnummer",returnAs='query');
					basket=	 model("basket").new();
					break;
			}


			</cfscript>
			<cfset file.Eindatum="#DateFormat(now())# #TimeFormat(now())#">

		</cfif>

	</cffunction>
	
	<cffunction name="barcode_einlagerung">
        <cfinclude template="../views/akten/navigation.cfm">
		<cfset barcode_field = model("barcode_a").new()>
		<cfset customer=model("customer").new()>
		<cfset customers=model("customer").findAll()>
		<cfset file = model("basket").new()>

	
			
		<cfif StructKeyExists(params,"key")>

			<cfscript>
				var prefix=ListFirst(params.key,":");
				var value=ListLast(params.key,":");
			switch (prefix) {
				/* Baset wurde zuerst ausgewählt */
				case "basket":
					baskets=model("basket").findOneByKartonnummer(key=value,select="Kundencode,customers.K_Kundenname as Kunde,KARTONNUMMER,LAGERORT,files.Aktennummer,files.text",include="customers,files",returnAs='query');
					baskets_select=model("basket").findAllByKundencode(key=value,select="KARTONNUMMER",group="Kartonnummer",returnAs='query');
					customers=model("customer").findAllByK_Kundencode(baskets.Kundencode);
					basket = model("basket").new();
					break;
				case "customer":
					/* customer wurde zuerst ausgewählt*/


					customers= model("customer").findOneByK_Kundencode(key=value,returnAs='query');
					baskets= model("basket").findAllByKundencode(key=customers.K_Kundencode,select="customers.K_Kundenname as Kunde,KARTONNUMMER,LAGERORT,files.Aktennummer,files.text",include="customers,files");
					baskets_select=model("basket").findAllByKundencode(key=customers.K_Kundencode,select="KARTONNUMMER",group="Kartonnummer",returnAs='query');
					basket=	 model("basket").new();
					break;
			}


			</cfscript>
			<cfif StructKeyExists(params,"basket")>
				<cfset basket=model("basket").findOneByKartonnummer(key=params.basket,select="KARTONNUMMER,LAGERORT")>
				<cfif isDefined("basket")>
					<cfset file.Karton=basket.Kartonnummer>
				</cfif>
			</cfif>
			<cfset file.Eindatum="#DateFormat(now())# #TimeFormat(now())#">

		</cfif>

	</cffunction>


	<cffunction name="create_basket">
        <cfinclude template="../views/akten/navigation.cfm">
	    <cfset basket = model("basket").create(params.basket)>
	    <cfset redirectTo(
	        action="einlagerung_new",
	        success="Karton #basket.Kartonnummer# auf Lagerplatz #basket.Lagerort# erfolgreich angelegt.",
	        params="basketid=#basket.Kartonnummer#"
	    )>

	</cffunction>
	
	<cffunction name="create_file">




		<cfscript>

		if( params.file.Karton EQ "")
		{
			params.file.Karton=params.basket.Kartonnummer;
			params.basket.Kundencode=params.customer.Kundencode;
			basket = model("basket").create(params.basket);

		}
		</cfscript>

        <cfinclude template="../views/akten/navigation.cfm">
	    <cfset file = model("file").create(params.file)>
	    <cfset redirectTo(
	        action="akte_new",
	        key="customer:#params.customer.Kundencode#",
	        success="Akte #file.Aktennummer# in Karton #file.Karton# f&uuml;r Kunde #params.customer.Kundencode# erfolgreich eingelagert."
	    )>

	</cffunction>

	<cffunction name="create_file_new">

		<cfscript>
 		basket=model("basket").findOneByKartonnummer(key=params.file.Karton,select="Kundencode,KARTONNUMMER,LAGERORT",returnAs='query');
		if( basket.recordCount NEQ 1)
		{
			params.basket.Kundencode=params.customer.Kundencode;
			basket = model("basket").create(params.basket);
		}
		</cfscript>

        <cfinclude template="../views/akten/navigation.cfm">
	    <cfset file = model("file").create(params.file)>
	    <cfset redirectTo(
	        action="barcode_einlagerung",
	        key="customer:#params.customer.Kundencode#",
	        params="basket=#file.Karton#",
	        success="Akte #file.Aktennummer# in Karton #file.Karton# f&uuml;r Kunde #params.customer.Kundencode# erfolgreich eingelagert. Karton steht auf #basket.lagerort# "
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
			<cfset basketid=params.key>
		<cfelse>
			<cfset files = model("file").findAll(select="AKTENNUMMER,EINDATUM,KARTON,VERNICHT_DAT,VERNICHTET,VERNICHTETAM,TEXT")>
			<cfset basketid=files.KARTON>
		</cfif>
	</cffunction>


</cfcomponent>
