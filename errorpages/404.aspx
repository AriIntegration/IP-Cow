<!DOCTYPE html>

<%@ Page Language="C#" %>

<%
    string currentURL = HttpContext.Current.Request.Url.Host;
%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><% Response.Write(currentURL);%> - 404 Error</title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,900" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="//<% Response.Write(currentURL);%>/ErrorPages/style.css" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body>
    <div id="notfound">
        <div class="notfound">
            <div class="notfound-404">
                <h1>Oops!</h1>
            </div>
            <h2>404 - Not Found</h2>
            <p>The page you are looking for might have been removed, had its name changed or is temporarily unavailable.</p>
            <a href="//<% Response.Write(currentURL);%>">Go To Homepage</a>
        </div>
    </div>
</body>
<!-- Credit to Colorlib (https://colorlib.com) for css and layout -->
</html>
