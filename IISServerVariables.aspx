<%@ Page Language="C#" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
</head>
<body>
<table border="1">
	<%
	foreach (string var in Request.ServerVariables)
	{
		Response.Write("<tr><td>" + var + "</td><td>" + Request[var] + "</td></tr>");
	}
	%>
</table>
</body>
</html>