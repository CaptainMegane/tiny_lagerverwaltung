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

<cffunction name="showPirntPage">
	<!--- 	<cfinclude template="../views/akten/navigation.cfm"> --->

<cfscript>
barcode=params.barcode.code;
//barcode=NumberFormat(barcode,"00000000");

Font = createObject("java", "com.itextpdf.text.pdf.BaseFont");
//dump(Font);
//NewFont = Font.createFont( "TIMES_ROMAN","winansi", false);
//abort;
//codeEAN = createobject("java","com.lowagie.text.pdf.BarcodeEAN");
codeEAN= createobject("java","com.lowagie.text.pdf.Barcode128");

codeEAN.setCodeType(codeEAN.CODE128);
codeEAN.setSize("15");
//ScodeEAN.setBarHeight(50);
codeEAN.setCodeType(codeEAN.EAN13);




dump(codeEAN);
dump(codeEAN.getSize());
//abort;


codeEAN.setCode(barcode);
codeEAN.setAltText(barcode);
color =  createobject("java","java.awt.Color");

image = codeEAN.createAwtImage(color.black, color.white);

bufferedImage = createObject("java", "java.awt.image.BufferedImage");

bufferedImageType = bufferedImage.TYPE_BYTE_GRAY;

bufferedImage = bufferedImage.init(image.getWidth(JavaCast("null", "")),image.getHeight(JavaCast("null", "")), bufferedImageType);

graphics2D = bufferedImage.createGraphics();

graphics2D.drawImage(image,0,0,JavaCast("null", ""));



barcodeImage = imageNew(bufferedImage);

</cfscript>


</cffunction>




</cfcomponent>
