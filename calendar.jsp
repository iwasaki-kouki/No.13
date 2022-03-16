<%@ page contentType="text/html;charset=Windows-31J"
	import="java.net.URLDecoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%
Map map = new HashMap();
map.put("0101","元旦");
map.put("0102","初夢");
map.put("0105","小寒");
map.put("0107","人日の節句(七草)");
map.put("0110","成人式");
map.put("0111","鏡開き");
map.put("0115","小正月");
map.put("0120","大寒");
map.put("0203","節分");
map.put("0204","立春");
map.put("0210","初午");
map.put("0211","建国記念日");
map.put("0214","バレンタインデー");
map.put("0223","天皇誕生日");
map.put("0303","桃の節句");
map.put("0324","彼岸明け");
map.put("0401","エイプリルフール");
map.put("1224","クリスマス");
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
<title>今日の行事</title>
</head>
<body>

	<c:choose>
		<c:when test="${Xdate != null}">
					<fmt:formatDate value="${Xdate}" pattern="yyyy年M月d日E曜日" />
			<c:set var="how" value="${param['day']}" />
			<c:set var="how4" value="${fn:substring(how, 4, 8)}"/>
			<c:set var="how3" value="${[mapA[how4]]}"/>
			<br>
				<c:if test="${how3!=null}">
					<c:out value="${how3}"/>
				</c:if>
	   </c:when>
		<c:when test="${Xdate == null}">
			<fmt:formatDate value="${date}" pattern="yyyy年M月d日E曜日" /><br>
			<c:set var="how2" value="${mapA['gyouzi']}"/>
				<c:if test="${how2!=null}">
					<c:out value="${how2}"/>
				</c:if>
		</c:when>
	</c:choose>
	<br>
	<form action="calendar2.jsp" method="post">
		<p>
			検索する日付：<br> <input type="text" name="day" value="20220101"><br>
			<input type="submit" value="登録">
		</p>
	</form>
</body>
</html>