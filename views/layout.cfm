<!--- Place HTML here that should be used as the default layout of your application. --->
<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="utf-8" />
<title>Lagerdatenbank</title>
<cfoutput>#styleSheetLinkTag("960_12_col.css")#</cfoutput>
</head>
<body>
	<div id="container">
	<div id="navigation">
		<cfoutput>#includeNavigation()#</cfoutput>
	</div>
	<div id="content">
		<cfoutput>#includeContent()#</cfoutput>
	</div>
	</div>
</body>
</html>