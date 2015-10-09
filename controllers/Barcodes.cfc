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
	<cfsavecontent variable="output">
		<cfinclude template="ettiketten_header.cfm">
	</cfsavecontent>
	<cfscript>
		//dump(output);
		//abort;
	</cfscript>

	 <cfloop index="intI" from="1" to="#params.barcode.anzahl#" step="1">
		<cfset barcode=intI>
		<cfset barcode=NumberFormat(barcode,"00000000")>
		<cfset barcodeImage=getOneBarcode(barcode)>

		<cfsavecontent variable="output">
			<cfoutput>

					#output#
					<td width=3D265 valign=3Dtop style=3D'width:198.4pt;padding:0cm .75pt 0cm=
					 .75pt;
					  height:116.2pt'>
					<p class=3DMsoNormal style=3D'margin-top:0cm;margin-right:12.9pt;margin-bottom:0cm;margin-left:12.9pt;margin-bottom:.0001pt;line-height:normal'>
						<cfset ImageWrite(barcodeImage, "/var/www/live/html/barcodes/#intI#.jpg")>
						<br>
						<img src=3D"http://s18591474.onlinehome-server.info/barcodes/#intI#.jpg"/>
						<br>#barcode#
  					</p>
					  </td>
			 <cfif ((NOT (intI MOD 3)) AND (intI LT #params.barcode.anzahl#))>
				</tr>
				 <tr style=3D'mso-yfti-irow:0;mso-yfti-firstrow:yes;page-break-inside:avoid;
				  height:116.2pt'>
			 </cfif>
			</cfoutput>
		</cfsavecontent>
	</cfloop>

</cffunction>




</cfcomponent>
