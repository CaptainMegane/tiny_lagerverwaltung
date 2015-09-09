<!--- Place HTML here that should be used as the default layout of your application. --->
<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="utf-8" />
<title>Lagerdatenbank</title>

<cfoutput>
#styleSheetLinkTag("reset.css")#
#styleSheetLinkTag("text.css")#
#styleSheetLinkTag("960_12_col.css")#
</cfoutput>
</head>
<body bgcolor="#F3E0C0">

	<div class="container_12" style="background:#C6B69D">
	<div style="background:#B72C3C">

		<h1>Header</h1>
	</div>

			<div class="main">
				<div id="navigation" class="grid_2" >
<cfoutput>
					#includeNavigation()#
</cfoutput>
				</div>
				<div id="content" class="grid_6">
					<cfoutput>
					#includeContent()#
					</cfoutput>
				</div>
			</div>
	 	</div>
</body>
</html>

