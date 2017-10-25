<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table id="tt" border="1">
	<tr>
		<th>序号</th>
		<th>姓名</th>
		<th>性别</th>
		<th>专业</th>
	</tr>
	<tr>
		<td>1</td>
		<td><input type="text" name="username"></td>
		<td>
			<input type="radio" name="gender" checked="checked">男
			<input type="radio" name="gender">女
		</td>
		<td>
			<input name="major">
		</td>
	</tr>
	
</table>
<input type="button" value="确定" onclick="addTr()">
</body>
<script type="text/javascript">
	function addTr(){
		var trcount = document.getElementsByTagName("tr").length;
		//添加一行元素
		var tr = document.createElement("tr");
		//第一个td
		var td1 = document.createElement("td");
		var xuhao = document.createTextNode(trcount);
		td1.appendChild(xuhao);
		tr.appendChild(td1);
		//第二个td
		var td2 = document.createElement("td");
		var input1 = document.createElement("input");
		input1.setAttribute("type", "text");
		input1.setAttribute("name", "uname"+(trcount-1));
		td2.appendChild(input1);
		tr.appendChild(td2);
		//第三个td
		var td3 = document.createElement("td");
		var input2 = document.createElement("input");
		var input3 = document.createElement("input");
		var nan = document.createTextNode("男");
		var nv = document.createTextNode("女");
		input2.setAttribute("type", "radio");
		input2.setAttribute("name", "gender"+(trcount-1));
		input2.setAttribute("checked", "checked");
		input3.setAttribute("type", "radio");
		input3.setAttribute("name", "gender"+(trcount-1));
		td3.appendChild(input2);
		td3.appendChild(nan);
		td3.appendChild(input3);
		td3.appendChild(nv);
		tr.appendChild(td3);
		//第四个td
		var td4 = document.createElement("td");
		input4 = document.createElement("input");
		input4.setAttribute("type", "text");
		td4.appendChild(input4);
		tr.appendChild(td4);		
		
		var tt = document.getElementById("tt");
		tt.appendChild(tr);

	}
</script>
</html>