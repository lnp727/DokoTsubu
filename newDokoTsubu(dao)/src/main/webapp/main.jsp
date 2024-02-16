<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
     %>
     <%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<% 
// 運勢をランダムで決定
String[] luckArray = { "Super Lucky", "Lucky", "Normal" };
int index = (int) (Math.random() * 3);
String luck = luckArray[index];

// 実行日を取得
Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("MM月dd日");
String today = sdf.format(date);
%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DokoTsubu</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="wrapper">
<h1>DokoTsubu</h1><img src="http://localhost:8080/newDokoTsubu_dao/images/青い鳥.jpg"width="40" height="50">
<p>

<p>今日<%= today %>の運勢が｢<%= luck %>｣の<br>

<c:out value="${loginUser.name}" />さん<br>

</p>

<section>
<h3>新規作成</h3>
<form action="Main" method="post">
本文:<textarea name="text" rows="3"></textarea><br>
<button type="submit">投稿</button>
</form>


<p><a href="Main">更新</a></p>
<c:if test="${not empty errorMsg}">
  <p>${errorMsg}</p>
</c:if>
</section>
<h3>投稿一覧</h3>


<c:forEach var="mutter" items="${mutterList}">
<p><c:out value="${mutter.id}" />:<c:out value="${mutter.userName}" />：<c:out value="${mutter.text}" /></p>
</c:forEach>

</div>
</body>
<a href="Logout">ログアウト</a>

<jsp:include page="footer.jsp" />
</html>