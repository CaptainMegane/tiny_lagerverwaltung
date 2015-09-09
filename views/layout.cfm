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
<body style="backgroud: #F3E0C0">
	<div>
		<div class="grid_6" >
			&nbsp;
		</div>
		<h1>Header</h1>
	</div>
	<div class="container_12">
		<div class="grid_2" >
			&nbsp;
		</div>
			<div class="main">
				<div id="navigation" class="grid_2" style="background:#B72C3C">
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

