package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MethodServlet extends HttpServlet {
    // http://localhost:9999/Lecture-web/method?id=ku
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String method = request.getMethod(); // 이 요청이 어떤 형식으로 넘어왔는지 확인(get or post)
		String uri = request.getRequestURI();
		StringBuffer url = request.getRequestURL(); //리턴타입이 stringBuffer  
		String id = request.getParameter("id"); //id라는 속성으로 날라온 value 값이 얼마니??
	    //getParameter가 리턴하는 값은 String 형이다.
		
		/*
		System.out.println("요청 메소드 : "+method + "\nid값: "+id + "\n요청 URI: "+ uri);
		System.out.println("요청 url : " + url.toString());
		*/
		
		
		
		/*
		서버랑 클라이언트가 서로 데이터를 전달하기 위해서는 io통로가 필요
		서버가 가지고 있는 데이터를 클라이언트한테 전달 = outputStream
		한글을 잘 전달하기 위해서 writer 객체 사용
		 */
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter(); //반환타입이 printwriter
		out.println("<html>");
		out.println("	<head>");
		out.println("		<title>메소드 요청방식</title>");
		out.println("	</head>");
		out.println("	<body>");
		out.println("     ====================================<br> ");
		out.println("     &nbsp;&nbsp;&nbsp;&nbsp;출력결과<br> ");
		out.println("     ====================================<br> ");
		out.println("     파라미터 (id)	:	" + id + "<br>");
		out.println("     요청방식	:	" + method + "<br>");
		out.println("     uri	:	" + uri + "<br>");
		out.println("     url	:	" + url + "<br>");
		out.println("     ====================================<br> ");
		out.println("	</body>");
		out.println("</html>");
		
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post 방식에서는 무조권 필요!
		request.setCharacterEncoding("utf-8"); //get방식은 상관없지만 post는 인코딩 방식을 꼭 지정해주어야한다. 그렇지 않으면 반환되는 한글글자가 깨져서 나온다. 
		
		
		
		String method = request.getMethod(); // 이 요청이 어떤 형식으로 넘어왔는지 확인(get or post)
		String uri = request.getRequestURI();
		StringBuffer url = request.getRequestURL(); //리턴타입이 stringBuffer  
		String id = request.getParameter("id"); //id라는 속성으로 날라온 value 값이 얼마니??
	    //getParameter가 리턴하는 값은 String 형이다.
		
		/*
		System.out.println("요청 메소드 : "+method + "\nid값: "+id + "\n요청 URI: "+ uri);
		System.out.println("요청 url : " + url.toString());
		*/
		
		
		
		/*
		서버랑 클라이언트가 서로 데이터를 전달하기 위해서는 io통로가 필요
		서버가 가지고 있는 데이터를 클라이언트한테 전달 = outputStream
		한글을 잘 전달하기 위해서 writer 객체 사용
		 */
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter(); //반환타입이 printwriter
		out.println("<html>");
		out.println("	<head>");
		out.println("		<title>메소드 요청방식</title>");
		out.println("	</head>");
		out.println("	<body>");
		out.println("     ====================================<br> ");
		out.println("     &nbsp;&nbsp;&nbsp;&nbsp;출력결과<br> ");
		out.println("     ====================================<br> ");
		out.println("     파라미터 (id)	:	" + id + "<br>");
		out.println("     요청방식	:	" + method + "<br>");
		out.println("     uri	:	" + uri + "<br>");
		out.println("     ====================================<br> ");
		out.println("	</body>");
		out.println("</html>");
	}
	
	
}
