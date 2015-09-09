<!--- Place HTML here that should be used as the default layout of your application. --->
<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="utf-8" />
<title>Lagerdatenbank</title>
<link rel="stylesheet" media="all" href="../styles/reset.css" />
<link rel="stylesheet" media="all" href="../styles/text.css" />
<link rel="stylesheet" media="all" href="../styles/960_12_col.css" />
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