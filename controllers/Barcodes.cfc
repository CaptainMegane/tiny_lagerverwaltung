<!---
  --- Akten
  --- -----------
  --- alles rund um die akten
  --- author: Hugh
  --- date:   01.09.15
  --->
<cfcomponent extends="Controller">

	<cffunction name="generateKartoncodes">
	<!--- 	<cfinclude template="../views/akten/navigation.cfm"> --->


		<cfset barcode = model("file").new()>

	</cffunction>

<cffunction name="getOneBarcode">
	<cfargument   name="code2generate" required="yes">

	<cfscript>

	codeEAN= createobject("java","com.lowagie.text.pdf.Barcode128");
	codeEAN.setCodeType(codeEAN.CODE128);
	codeEAN.setSize("15");
	codeEAN.setBarHeight(50);
	codeEAN.setCode(code2generate);
	codeEAN.setAltText(code2generate);
	color =  createobject("java","java.awt.Color");
	image = codeEAN.createAwtImage(color.black, color.white);
	bufferedImage = createObject("java", "java.awt.image.BufferedImage");
	bufferedImageType = bufferedImage.TYPE_BYTE_GRAY;
	bufferedImage = bufferedImage.init(image.getWidth(JavaCast("null", "")),image.getHeight(JavaCast("null", "")), bufferedImageType);
	graphics2D = bufferedImage.createGraphics();
	graphics2D.drawImage(image,0,0,JavaCast("null", ""));
	barcodeImage = imageNew(bufferedImage);

	return barcodeImage;
	</cfscript>


</cffunction>

<cffunction name="showPirntPage">
	<!--- 	<cfinclude template="../views/akten/navigation.cfm"> --->
	<cfset output="">
	 <cfloop index="intI" from="1" to="#params.barcode.anzahl#" step="1">
		<cfset barcode=intI>
		<cfset barcode=NumberFormat(barcode,"00000000")>
		<cfset getOneBarcode(barcode)>

		<cfsavecontent variable="output">
			<cfoutput>
					#output#
					<cfimage action="writeToBrowser" source="#barcodeImage#" format="jpg">
					<br>
					#barcode#
					<br>
			</cfoutput>
		</cfsavecontent>
	</cfloop>

</cffunction>




</cfcomponent>
