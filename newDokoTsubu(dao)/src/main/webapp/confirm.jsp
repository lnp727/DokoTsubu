<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
     %> 
     <% 
     request.setCharacterEncoding("UTF8");
     String strName = (String) request.getAttribute("name");
     String strMail = (String) request.getAttribute("mail");
     String strNumber = (String) request.getAttribute("number");
     String strBody = (String) request.getAttribute("body");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>確認画面</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="wrapper">
<h1>お問い合わせ</h1><img src="http://localhost:8080/newDokoTsubu_dao/images/青い鳥.jpg"width="40" height="50">

<h2>確認画面 </h2>
<div>
  <form action="<c:url value="FormServlet" />" <method=post>
    <table>
      <tr>
        <th>氏名</th>
        <td><%=strName%></td>
      </tr>
      <tr>
        <th>メールアドレス</th>
        <td><%=strMail%></td>
      </tr>
  
      <tr>
        <th>電話番号</th>
        <td><%=strNumber%></td>
      </tr>
      <tr>
        <th>お問い合わせ内容</th>
        <td><%=strBody%></td>
      </tr>
    </table>
    </div>
    <p>こちらの内容でよろしければ　送信へ <br> 修正する場合は　戻るへ進んでください。</p>
    <div>
      
      <a href="forward.jsp">送信</a>
      <button type="button" onclick="history.back()">戻る</button>
    
    </form>
        </div>
    <jsp:include page="footer.jsp" />
</body>
</html>
    
    
    
    
    
   