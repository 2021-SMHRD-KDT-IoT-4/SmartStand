package com.Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	
	public void command(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException; //추상메소드라서 중괄호ㄴㄴ
	
	
	
	
}
