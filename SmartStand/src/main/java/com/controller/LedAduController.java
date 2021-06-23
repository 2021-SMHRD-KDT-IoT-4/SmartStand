package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.LedDAO;

@WebServlet("/LedAduController")
public class LedAduController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static String ledstates ="";

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		LedDAO dao = new LedDAO();
		
		ledstates = dao.select();
		
		PrintWriter out = response.getWriter();

		if (ledstates.equals("1")) {
			out.print("/{\"LED1\":1}/");
		} else if (ledstates.equals("0")) {
			out.print("/{\"LED1\":0}/");
		}
	}

}
