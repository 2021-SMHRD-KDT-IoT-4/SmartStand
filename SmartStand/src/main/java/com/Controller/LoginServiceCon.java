package com.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Front.Command;
import com.Model.MemberDAO;
import com.Model.MemberDTO;

public class LoginServiceCon implements Command {

	@Override
	public void command(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		//post��� ���ڵ�
		request.setCharacterEncoding("EUC-KR");
		
		//�� �޾ƿ���
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	
		MemberDTO dto = new MemberDTO(id, pw);
		MemberDAO dao = new MemberDAO();
		MemberDTO info = dao.login(dto);
		
		if(info != null) {
			System.out.println("�α��� ����");
			HttpSession session = request.getSession();
			session.setAttribute("login_info", info);
		}else {
			System.out.println("�α��� ����");
		}
	
		response.sendRedirect("main.jsp");
		
	}

}
