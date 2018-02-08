<html>
<body>
<%
 // read form data
 String favLang = request.getParameter("favoriteLanguage");

// create cookie
Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);


// set life span
theCookie.setMaxAge(120);

// send to browser the cookie
response.addCookie(theCookie);

%>

Thanks. We set fav lang to: ${param.favoriteLanguage }
<br/>
<a href="cookies-homepage.jsp">Return to homepage!!!</a>
</body>


</html>