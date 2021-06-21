package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Model.BoardDAO;

@WebServlet("/DelOneServiceCon")
public class DelOneServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String num = request.getParameter("num");

		BoardDAO dao = new BoardDAO();
		int cnt = dao.DelOneMessage(num);

		if (cnt > 0) {
			System.out.println("���ǻ��� ���� ����");
		} else {
			System.out.println("���ǻ��� ���� ����");
		}

		response.sendRedirect("customerservice.jsp");

		 
	}

}
