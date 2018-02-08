<html>
<body>

<h3>Training Portal</h3>
<%
  String favLang = "Java";  // the default if there are no cookies
  
  Cookie[] theCookies = request.getCookies();
  
  if(theCookies !=null){
	  for(Cookie tempCookie : theCookies){
		  if("myApp.favoriteLanguage".equals(tempCookie.getName())){
			  favLang = tempCookie.getValue();
			  break;
		  }
	  }
  }
%>

<h4>New books for <%= favLang %></h4>
<ul>
	<li> Colectii </li>
	<li>Stringuri</li>
	</ul>
	
	<h5>News for <%= favLang %></h5>
<ul>
	<li> Lansari de carte </li>
	<li>Stiri de ultima ora</li>
	</ul>
	
	<a href = "cookies-personalize-form">Personalize this page !</a>
</body>


</html>