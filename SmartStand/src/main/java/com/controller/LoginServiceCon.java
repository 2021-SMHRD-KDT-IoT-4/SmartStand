package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

public class LoginServiceCon implements Command {

	@Override
	public void command(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		//post방식 인코딩
		request.setCharacterEncoding("EUC-KR");
		
		//값 받아오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	
		MemberDTO dto = new MemberDTO(id, pw);
		MemberDAO dao = new MemberDAO();
		MemberDTO info = dao.login(dto);
		
		if(info != null) {
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("login_info", info);
		}else {
			System.out.println("로그인 실패");
		}
	
		response.sendRedirect("main.jsp");
		
	}

}
