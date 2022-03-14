<%@ page contentType="text/html; charset=UTF-8" import="java.net.URLEncoder" %>
<%
request.setCharacterEncoding("UTF-8");
String Email = URLEncoder.encode(request.getParameter("Email"), "UTF-8");
session.setAttribute("Email", Email);
%>
<%
session.setMaxInactiveInterval(180);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>保存画面</title>
</head>
<body>
  <p>Eメールが保存されました。</p>
  <a href="registerEmail.jsp">先のページに戻る。</a>
</body>
</html>