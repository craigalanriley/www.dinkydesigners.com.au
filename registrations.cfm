<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title>Test</title>
  <meta name="description" content="The HTML5 Herald">
  <meta name="author" content="SitePoint">
</head>

<body>

<cfmail to="info@foxtrotyankeeindia.com" from="test@example.com" subject="Test Email">
  Your Email Message!!
</cfmail>


<cfquery name="getUsers" datasource="#Application.DSN#">
	select * from users
</cfquery>

<cfdump var="#getUsers#"/>


</body>
</html>