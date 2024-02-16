<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%
// 運勢をランダムで決定
String[] luckArray = { "大吉", "吉", "凶" };
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
<title>スッキリ占い</title><link rel="stylesheet" href="css/style.css">
</head>
<body>

<p><%= today %>の運勢は<br>

｢<%= luck %>｣です</p><br>

<a href="index.jsp">TOPへ戻る</a>
</body>
</html>






