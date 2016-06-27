<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.min.js "></script>
<script type="text/javascript">
function formcom(){
	document.myform.submit();
	}
</script>
</head>
<body>
<form name = "myform" method="post" action="/delete">
	<div>id:
		<input type="text" name="id" size="30" maxlength="20" value="${user.id }"><br>
	</div>
	<div>username:
		<input type="text" name="username" size="30" maxlength="20" value="${user.username }"><br>
	</div>
	<div>password:
		<input type="text" name="password" size="30" maxlength="20" value="${user.password }"><br>
	</div>
	<div><input type="button" onclick = "formcom()" value= "delete"></div>
</form>	
</body>
</html>