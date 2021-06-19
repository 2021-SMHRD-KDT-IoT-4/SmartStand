package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Model.BoardDAO;
import com.Model.BoardDTO;


@WebServlet("/MessageServiceCon")
public class MessageServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		String sendName = request.getParameter("sendName");
		String myEmail = request.getParameter("myEmail");
		String message = request.getParameter("message");
		String category = request.getParameter("category");

		BoardDTO dto = new BoardDTO(sendName, myEmail, message, category);
		BoardDAO dao = new BoardDAO();
		int cnt = dao.insertMessage(dto);

		if (cnt > 0) {
			System.out.println("메시지 전송 성공");
		} else {
			System.out.println("메시지 전송 실패");
		}

		response.sendRedirect("customerservice.jsp");
		
	}

}
