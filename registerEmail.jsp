<%@ page contentType="text/html; charset=UTF-8" import="java.net.URLDecoder" %>
<%
String Email= (String)session.getAttribute("Email"); 
if (Email == null) {
	  Email = "";
	} else {
	  Email = URLDecoder.decode(Email);
	}
%>
<%
session.setMaxInactiveInterval(180);
%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>三分間Eメール</title>
</head>
<body>
	<form action="date.jsp" method="post">
		<p>
			Eメール：<br> 
			<input type="text" name="Email" value=<%=Email%>><br>
			<input type="submit" value="登録"> 
		</p>
	</form>
	<br>
	<form action="" method="post">
		<input type=submit value="ログアウト">
		<%session.invalidate();%>
	</form>
</body>
</html>