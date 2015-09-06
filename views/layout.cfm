<!--- Place HTML here that should be used as the default layout of your application. --->

<html>
	<body>
		<div id="navigation" style="float:left">
			HIER kommt das Menü!
		</div>

		<div id="content">

			<cfoutput>#includeContent()#</cfoutput>
		</div>
	</body>
</html>