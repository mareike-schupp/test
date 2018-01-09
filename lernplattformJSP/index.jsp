<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int a = 5;
	int b = 4;
	int ergebnis = a*b;
	
	
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>

<title>Meine erste Java-Web-Seite</title>
</head>

<body>
<% 
	//Connection conn = null;
	try {
		// Laut MySQL-Web-Seiten ist zusaetzlicher Aufruf von
		//  newInstance() wegen moeglicher Probleme in
		//  manchen Java-Varianten anzuraten. 
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		out.println("<b>MySQL-Treiber wurde geladen!</b>");
	}
	catch(ClassNotFoundException e) {
		out.println("<b>MySQL-Treiber konnte nicht geladen werden</b>");
		out.println("<pre><code>");
		out.println(e.getStackTrace());
		out.println("</code></pre>");
	}
%>





	Test
	<br>
	<br>

	


</body>
</html>