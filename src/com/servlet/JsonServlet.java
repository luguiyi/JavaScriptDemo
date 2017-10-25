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
		//��ȡajax������������
		response.setContentType("application/json");
		String data = request.getParameter("data");
		String PW = request.getParameter("PW");
		//�½�һ��gson�������json
		Gson gson = new Gson();
		//��json����ת����javabean
		//JSONObject jo = JSONObject.fromObject(data);
		//jo.put("age", 18);
		//System.out.println("jo:"+jo);
		User u = gson.fromJson(data, User.class);
		System.out.println("�û�����"+u.getName()+" ���룺"+u.getPassword());
		//�޸�����
		u.setPassword(PW);
		//��javabeanת��Ϊjson
		String afterData = gson.toJson(u);
		System.out.println(afterData);
		PrintWriter out = response.getWriter();  
	    out.write(afterData);  
	    out.flush();  
	    out.close();
	}

}
