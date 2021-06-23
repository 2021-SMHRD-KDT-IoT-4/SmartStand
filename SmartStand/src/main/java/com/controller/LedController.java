package com.controller;

import java.io.IOException;

import java.io.PrintWriter;



import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.model.LedDAO;
import com.model.LedDTO;



@WebServlet("/LedController")

public class LedController extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

   

        int onoff = Integer.parseInt(request.getParameter("led"));

        String led = "{\"sensor\":\"led\", \"on\":"+onoff+"}";
        
        LedDAO dao = new LedDAO();
        LedDTO dto  = new LedDTO(onoff+"");
        dao.update(dto);
        
        response.setContentType("text/json");

        PrintWriter out = response.getWriter();

        out.println(led); //--------------> ajax()  :  success

    }

}
