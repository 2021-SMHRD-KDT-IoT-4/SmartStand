package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BoardDAO;
import com.model.BoardDTO;
import com.model.MemberDTO;

public class AnwserServiceCon implements Command {

	@Override
	public void command(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String Qtitle = request.getParameter("Qtitle");
		String category = request.getParameter("category");
		String message = request.getParameter("Message");
		String anwser = request.getParameter("anwser");

		BoardDTO dto = new BoardDTO(Qtitle, category, message,anwser);
		BoardDAO dao = new BoardDAO();
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("login_info");
		String num = (String) session.getAttribute("num");
		
		String id = info.getId();
		
		int cnt = dao.update(dto,num);
		System.out.println(cnt);

		if (cnt > 0) {
			System.out.println("답변 성공");
		} else {
			System.out.println("답변 실패");
		}

		response.sendRedirect("main.jsp");
		

	}

}
