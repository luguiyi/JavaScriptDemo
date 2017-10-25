<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
</head>
<body>
<h2>从 JSON 字符串中创建对象</h2>
<p>
用户名: <span id="name"></span><br> 
密码: <span id="password"></span><br> 
修改密码：<input type="text" id="PW">
<input type="button" value="修改密码" onclick="changePW()">
</p> 
<script>
//创建xhr,IE低版本不支持
var xhr = new XMLHttpRequest();
//servlet地址
var url="JsonServlet";
//xhr处理事件,异步
var data = {"name":"Tom","password":20};
//alert(data);
document.getElementById("name").innerHTML=data.name;
document.getElementById("password").innerHTML=data.password;

function changePW(){
var PW = document.getElementById("PW").value;

xhr.onreadystatechange = function() {
    if (xhr.readyState == 4 && xhr.status == 200) {
    //在这里进行相关处理,通过xhr.responseText获取后台反馈的文本
    	//xhr.setRequestHeader("Content-type", "application/json");
    	var getData = xhr.responseText;
    	var result = JSON.parse(getData);
    	document.getElementById("name").innerHTML=result.name;
    	document.getElementById("password").innerHTML=result.password;
    	//alert(result.name);
    	//alert(result.password);
    }
};
xhr.open("get", url+"?data="+JSON.stringify(data)+"&PW="+PW , true);
//xhr发送数据
xhr.send();
}
</script>
</body>
</html>