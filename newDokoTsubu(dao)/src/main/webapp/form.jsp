<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
     %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>お問い合わせフォーム</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
<div class="wrapper">
<h1>お問い合わせ</h1><img src="http://localhost:8080/newDokoTsubu_dao/images/青い鳥.jpg"width="40" height="50">

    <form action="FormServlet" method="post">
        お名前<br>
        姓<input type="text" name="name"><br>
        名<input type="text" name="name">
        <br>
        <br>
        メールアドレス<br><input type="text" name="mail"><br>
        お電話番号<br><input type="text" name="number"><br>
        
お問い合わせ内容<br>
<textarea name="body"></textarea><br>
<input type="submit" value="送信">
<a href="index.jsp">TOP</a>
    </form>
    <c:if test="${not empty errorMsg}">
    <p><c:out value="${errorMsg}" /></p>
    </c:if>
    
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>