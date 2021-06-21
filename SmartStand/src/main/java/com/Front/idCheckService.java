package com.Front;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Model.MemberDAO;

@WebServlet("/idCheckService")
public class idCheckService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		System.out.println(id);
	
		MemberDAO dao = new MemberDAO();
		boolean check = dao.idcheck(id);
		
		out.print(check);
	}

}
