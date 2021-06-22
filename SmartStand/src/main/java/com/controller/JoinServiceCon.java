package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;


public class JoinServiceCon implements Command {

	@Override
	public void command(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String addr = request.getParameter("addr");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		MemberDTO dto = new MemberDTO(id, pw, name, tel, addr,email);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(dto);
		
			
		if(cnt>0) {
			System.out.println("ȸ�����Լ���");
			
			HttpSession session = request.getSession(); //���� ����
			session.setAttribute("id", id); //���� ����
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("ȸ�����Խ���");
			response.sendRedirect("main.jsp");
		}
		
	//�ܼ�â�� ����غ���.	
		response.setCharacterEncoding("EUC-KR");
		PrintWriter out = response.getWriter();
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(tel);
		System.out.println(addr);
		
		
	}

}
