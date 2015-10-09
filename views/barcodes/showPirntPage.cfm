<cfsavecontent variable="strMHTData">
	<!---
		Include the MHT data. We are doing this as
		a CFSaveContent so that we can have better
		trim and streaming control.
	--->
	#output#
</cfsavecontent>


<!---
	Trim the MHT content. Microsoft seems to be
	very picky about leading whitespace.
--->
<cfset strMHTData = Trim( strMHTData ) />


<!--- Set the header information. --->
<cfheader
	name="content-disposition"
	value="attachment; filename=karton-labels.mht"
	/>

<!--- Set the content to be a Microsoft Word file. --->
<cfcontent
	type="application/msword"
	variable="#ToBinary( ToBase64( strMHTData ) )#"
	/>
