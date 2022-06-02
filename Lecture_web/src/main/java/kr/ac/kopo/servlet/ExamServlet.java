package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/exam") //xml파일의 '가상 url 매핑' 방식을 대신해서 .java 파일에서 어노테이션으로도 쓸 수 있다. (둘 중 한가지만 존재해야한다.둘다 쓰면 에러난다. )
public class ExamServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String [] hobby = req.getParameterValues("hobby"); //속성의 복수개의 값을 가져올 때 쓰는 메소드 
	
/*
 * http://localhost:9999/Lecture-web/servlet/exam?name=hong 입력시 
 * 
 * 웹 브라우저에 다음의 결과가 응답됨
 * 이름:hong
 */
	
	resp.setContentType("text/html; charset=utf-8");
	PrintWriter out = resp.getWriter(); //반환타입이 printwriter
	
	out.println("<html>");
	out.println("	<head>");
	out.println("		<title>exam 요청방식</title>");
	out.println("	</head>");
	out.println("	<body>");
	out.println("     이름	:	" + name + "<br>");
	out.println("     취미	:	");
	for(int i=0; i<hobby.length; i++) {
		out.println(hobby[i] + "&nbsp;&nbsp;");
	}
	out.println("	</body>");
	out.println("</html>");
	
	}
	
}
