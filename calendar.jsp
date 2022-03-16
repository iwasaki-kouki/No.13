<%@ page contentType="text/html;charset=Windows-31J"
	import="java.net.URLDecoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%
Map map = new HashMap();
map.put("0101","³U");
map.put("0102","²");
map.put("0105","¬¦");
map.put("0107","lúÌßå(µ)");
map.put("0110","¬l®");
map.put("0111","¾J«");
map.put("0115","¬³");
map.put("0120","å¦");
map.put("0203","ßª");
map.put("0204","§t");
map.put("0210","ß");
map.put("0211","LOú");
map.put("0214","o^Cf[");
map.put("0223","Vca¶ú");
map.put("0303","Ìßå");
map.put("0324","ÞÝ¾¯");
map.put("0401","GCvt[");
map.put("1224","NX}X");
request.setAttribute("mapA",map);
%>

<jsp:useBean id="date" class="java.util.Date" />
<%!Date date = new Date();
	String gyouzi = new SimpleDateFormat("MMdd").format(date);%>
<fmt:parseDate var="Xdate" value="${param['day']}" type="DATE" pattern="yyyyMMdd" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>¡úÌs</title>
</head>
<body>

	<c:choose>
		<c:when test="${Xdate != null}">
					<fmt:formatDate value="${Xdate}" pattern="yyyyNMdúEjú" />
			<c:set var="how" value="${param['day']}" />
			<c:set var="how4" value="${fn:substring(how, 4, 8)}"/>
			<c:set var="how3" value="${[mapA[how4]]}"/>
			<br>
				<c:if test="${how3!=null}">
					<c:out value="${how3}"/>
				</c:if>
	   </c:when>
		<c:when test="${Xdate == null}">
			<fmt:formatDate value="${date}" pattern="yyyyNMdúEjú" /><br>
			<c:set var="how2" value="${mapA['gyouzi']}"/>
				<c:if test="${how2!=null}">
					<c:out value="${how2}"/>
				</c:if>
		</c:when>
	</c:choose>
	<br>
	<form action="calendar2.jsp" method="post">
		<p>
			õ·éútF<br> <input type="text" name="day" value="20220101"><br>
			<input type="submit" value="o^">
		</p>
	</form>
</body>
</html>