package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.data.Data;

public class AjaxServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8"); 
		String s = request.getParameter("userName");
		String name = URLDecoder.decode(s,"UTF-8");
		System.out.println("s:"+s);
		System.out.println(name);

		String flag;
		
		String[] data = {"666","777","888"};
		Data n = new Data();
		n.setUserData(data);
		if(n.checkUser(name)){
			flag = "用户已存在";
		}else{
			flag = "用户可以使用";
		}
	
        PrintWriter out = response.getWriter();  
        out.write(flag);  
        //request.getRequestDispatcher("ajax.jsp").forward(request, response);  
        out.flush();  
        out.close();
	}

}
