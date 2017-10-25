package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.data.User;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

public class JsonServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//获取ajax传过来的数据
		response.setContentType("application/json");
		String data = request.getParameter("data");
		String PW = request.getParameter("PW");
		//新建一个gson对象操作json
		Gson gson = new Gson();
		//把json数据转换成javabean
		//JSONObject jo = JSONObject.fromObject(data);
		//jo.put("age", 18);
		//System.out.println("jo:"+jo);
		User u = gson.fromJson(data, User.class);
		System.out.println("用户名："+u.getName()+" 密码："+u.getPassword());
		//修改数据
		u.setPassword(PW);
		//将javabean转换为json
		String afterData = gson.toJson(u);
		System.out.println(afterData);
		PrintWriter out = response.getWriter();  
	    out.write(afterData);  
	    out.flush();  
	    out.close();
	}

}
