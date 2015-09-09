<!--- Place HTML here that should be used as the default layout of your application. --->
<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="utf-8" />
<title>Lagerdatenbank</title>
<<<<<<< HEAD
<link rel="stylesheet" media="all" href="../styles/reset.css" />
<link rel="stylesheet" media="all" href="../styles/text.css" />
<link rel="stylesheet" media="all" href="../styles/960_12_col.css" />
=======
<cfoutput>#styleSheetLinkTag("960_12_col.css")#</cfoutput>
>>>>>>> 7544ae0cdcb578945c9d3d7fad8f471c29a73eb1
</head>
<body>
	<div class="container_12">
		<div class="main">
			<div id="navigation" class="grid_6">
				<cfoutput>#includeNavigation()#</cfoutput>
			</div>
			<div id="content" class="grid_6">
				<cfoutput>#includeContent()#</cfoutput>
			</div>
		</div>
	</div>
</body>
</html>