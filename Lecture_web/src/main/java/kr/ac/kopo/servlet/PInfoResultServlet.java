package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/pInfoInput")
public class PInfoResultServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8"); 
		
		String name = request.getParameter("name"); 
		String id = request.getParameter("id"); 
		String pwd = request.getParameter("pwd"); 
		String sex = request.getParameter("sex"); 
		String job = request.getParameter("job"); 
	    
		String recieve_noctMail=request.getParameter("mail1");
	    String recieve_adMail=request.getParameter("mail2");
	    String recieve_delMail=request.getParameter("mail3");
	    
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter(); //반환타입이 printwriter
		out.println("<html>");
		out.println("	<head>");
		out.println("		<title>개인정보페이지</title>");
		out.println("	</head>");
		out.println("	<body>");
		out.println("     <h2> 개인 정보 출력</h2><br> ");
		
		out.println("     이름 :	" + name + "<br>");
		out.println("     아이디 :	" + id + "<br>");
		out.println("     패스워드 :	" + pwd + "<br>");
		out.println("     성별 :	" + sex + "<br>");
		out.println("     직업 :	" + job + "<br>");
		out.println("     메일 :	" + "<br>");
		
		//공지메일
		if( recieve_noctMail==null) {
        		out.write("공지메일: 받지않음 <br>");
        } else {
				out.write("공지메일: 받음 <br>");
        }
        //광고메일
		if( recieve_adMail==null) {
	        		out.write("광고메일: 받지않음 <br>");
	    } else { 
					out.write("광고메일: 받음 <br>");
	    }
 
	  //배송확인메일
	  if( recieve_delMail==null) {
		        	out.write("배송확인메일: 받지않음 <br>");
       } else { 
					out.write("배송확인메일: 받음 <br>");	
       }

	}

}
