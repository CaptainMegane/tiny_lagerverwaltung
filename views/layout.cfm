<!--- Place HTML here that should be used as the default layout of your application. --->
<!DOCTYPE html>
<cfoutput>
<html lang="de">
<head>
<meta charset="utf-8" />
<title>Lagerdatenbank</title>


#styleSheetLinkTag("reset.css")#
#styleSheetLinkTag("text.css")#
#styleSheetLinkTag("960_12_col.css")#

</head>
<body>
	<div class="container_12">
		<div class="main">
			<div id="navigation" class="grid_6">
				#includeNavigation()#
			</div>
			<div id="content" class="grid_6">
				#includeContent()#
			</div>
		</div>
	</div>
</body>
</html>

</cfoutput>