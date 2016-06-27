<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function formcom(){
	document.myform.submit();
	}
</script>
</head>
<body>
<form name = "myform" method="post" action="/findone">
	<div>username:
	<input type="text" name="username" size="30" maxlength="20"><br>
	</div>
	<div><input type="button" onClick ="formcom()" value= "findOne"></div>
</form>	
<div>result:</div>
 	<div>id:
 		<input type="text" name="username" size="30" maxlength="20" value=${user.id }></div>
    <div>username:
    	<input type="text" name="username" size="30" maxlength="20" value=${user.username }></div>
    <div>password:
    	<input type="text" name="password" size="30" maxlength="20" value=${user.password }></div>
</html>