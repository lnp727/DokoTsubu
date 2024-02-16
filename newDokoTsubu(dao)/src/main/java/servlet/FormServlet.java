package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FormServlet")
public class FormServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  
  public FormServlet() {
	    super();
	  }
  
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  request.getRequestDispatcher("form.jsp").forward(request, response);
  }
  
		

  
  

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // リクエストパラメータを取得
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String mail = request.getParameter("mail");
    String number = request.getParameter("number");
    String body = request.getParameter("body");
    
    
    
    request.setAttribute("name", name);
    request.setAttribute("mail", mail);
    request.setAttribute("number",number);
    request.setAttribute("body",body);
    
    
	//入力画面を表示する
	request.getRequestDispatcher("confirm.jsp").forward(request, response);


    
    
    
    
    


    // リクエストパラメータをチェック
    String errorMsg = "";
    if (name == null || name.length() == 0) {
      errorMsg += "名前を入力してください<br>";
    }
if(mail == null || mail.length()==0) {
	errorMsg +="メールアドレスを入力してください<br>";
}
if(number == null || number.length()==0) {
	errorMsg +="電話番号を入力してください<br>";
}
    if (body == null||body.length()==0) {
      errorMsg += "お問い合わせ内容を入力してください<br>";
      
    
    
    
    
    String msg=name+"さんのお問い合わせを送信しました";
    if(errorMsg.length() !=0) {
    	msg=errorMsg;
    }
    
    
    
    response.setContentType("text/html; charset=UTF-8");
    PrintWriter out = response.getWriter();
    out.println("<!DOCTYPE html >");
    out.println("<html>");
    out.println("<head>");
    out.println("<meta charset=\"UTF-8\">");
    
    out.println("<title>送信できませんでした</title>");
;
    out.println("</head>");
    out.println("<body>");
    
   
    out.println("<p>" + msg + "</p>");
    out.println("</body>");
    out.println("</html>");
    
    
  }else{RequestDispatcher dispatcher = request.getRequestDispatcher("forward.jsp");
    dispatcher.forward(request, response);
  }
    
    }
  }



 
    
    
  

    
    
 