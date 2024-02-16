<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
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




<form action="Login" method="post">
ユーザー名：<input type="text" name="name"><br>
パスワード：<input type="password" name="pass"><br>
<input type="submit" value="ログイン">
</form>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>


