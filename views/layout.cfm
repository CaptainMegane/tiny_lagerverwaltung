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
	<div style="background:#DEE0DD; border-radius: 10px 10px 0px 0px;   padding: 20px;  ">

		<img src="http://www.lagerplace24.de/s/misc/logo.gif?t=1440853842">

		<img src="http://www.lagerplace24.de/s/img/emotionheader.jpg?1439064682.920px.199px" id="emotion-header-img" alt="">
	</div>
	<div style="background:#B72C3C">

		<h1>Men�</h1>
	</div>

			<div class="main" >
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

