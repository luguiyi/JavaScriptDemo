<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script>
$(document).ready(function(){
    
  $("#777").click(function(){
    $("#666").show();
  });
  var data = {"name":"Tom","password":20};
  var url ="JsonServlet"+"?data="+JSON.stringify(data);
  $("#666").click(function(){
	  $("#666").load(url,data,function(responseTxt,statusTxt,xhr){
		  var datas = JSON.parse(responseTxt);
		  alert(datas.name);
		});
  });
});
</script>
</head>
<body>
<p id="666">6666</p>
<p id="777">继续点我!</p>
<p>接着点我!</p>
</body>
</html>