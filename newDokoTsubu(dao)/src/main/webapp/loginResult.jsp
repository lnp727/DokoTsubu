
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<%
// セッションスコープからユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
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
<% if(loginUser != null) { %>
  <p>ログインに成功しました</p>
  <p>ようこそ<%= loginUser.getName() %>さん</p>
  
  <a href="Main">つぶやきページ</a>
<% } else { %>
  <p>ログインに失敗しました</p>
  <a href="index.jsp">TOPへ</a>
<% } %>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>