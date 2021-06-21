package com.front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.controller.DeleteAllServiceCon;
//import com.controller.DeleteOneServiceCon;
//import com.controller.JoinServiceCon;
//import com.controller.LoginServiceCon;
//import com.controller.LogoutServireCon;
//import com.controller.MessageServiceCon;
//import com.controller.UpdateServiceCon;
//import com.controller.WriterBoardServiceCon;


@WebServlet("*.do")  //앞에 뭐든지 .do 이면 전부 여기로 옴
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String reqURI = request.getRequestURI();
		String path = request.getContextPath();
		
		String resultURI = reqURI.substring(path.length()+1);  //substring : 주소값에서 원하는거 없애줌
		
		Command inter = null;
		
//		if(resultURI.equals("DeleteAllServiceCon.do")) {
//			inter = new DeleteAllServiceCon();
//		}else if(resultURI.equals("DeleteOneServiceCon.do")) {
//			inter = new DeleteOneServiceCon();
//		}else if(resultURI.equals("JoinServiceCon.do")) {
//			inter = new JoinServiceCon();
//		}else if(resultURI.equals("LoginServiceCon.do")) {
//			inter = new LoginServiceCon();
//		}else if(resultURI.equals("LogoutServireCon.do")) {
//			inter = new LogoutServireCon();
//		}else if(resultURI.equals("MessageServiceCon.do")) {
//			inter = new MessageServiceCon();
//		}else if(resultURI.equals("UpdateServiceCon.do")) {
//			inter = new UpdateServiceCon();
//		}else if(resultURI.equals("WriterBoardServiceCon.do")) {
//			inter = new WriterBoardServiceCon();
//		}
		inter.command(request, response);
	}
}
