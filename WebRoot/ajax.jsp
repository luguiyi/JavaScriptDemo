<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<script>
function loadXMLDoc()
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	{
		//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
		//1、 创建ajax的对象
		xmlhttp=new XMLHttpRequest();
	}
	else
	{
		// IE6, IE5 浏览器执行代码
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	//2、请求的准备状态
	xmlhttp.onreadystatechange=function()
	{	//若请求完成且准备就绪
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
			//3、对获取到的响应进行处理
			document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
		}
	};
	//4、发送请求
	//请求方式		url		是否异步
	xmlhttp.open("GET","AjaxServlet",true);
	//这里如果不设定头部则会导致 firfox 发送数据错误，servlet接受到的参数为乱码，在IE中正常
	xmlhttp.setRequestHeader("Content-Type", "text/html;charset=UTF-8");
	xmlhttp.send();
}
</script>
</head>
<body>

<div id="myDiv"><h2>使用 AJAX 修改该文本内容</h2></div>
<button type="button" onclick="loadXMLDoc()">修改内容</button>

</body>
</html>