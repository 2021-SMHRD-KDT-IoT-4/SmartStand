package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BoardDAO;
import com.model.BoardDTO;


@WebServlet("/MessageServiceCon")
public class MessageServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		String sendName = request.getParameter("sendName");
		String message = request.getParameter("message");
		String myEmail = request.getParameter("myEmail");

		BoardDTO dto = new BoardDTO(sendName, myEmail, message);
		BoardDAO dao = new BoardDAO();
		int cnt = dao.insertMessage(dto);

		if (cnt > 0) {
			System.out.println("�޽��� ���� ����");
		} else {
			System.out.println("�޽��� ���� ����");
		}

		response.sendRedirect("customerservice.jsp");
		
	}

}
