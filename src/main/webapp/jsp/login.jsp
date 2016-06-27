<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function findOne(){
	response.sendRedirect("http://localhost:8080/sample_1/findOne.jsp"); 
}
function findAll(){
	
}
function deleteOne(){
	response.sendRedirect("http://localhost:8080/sample_1/delete.jsp"); 
}
function modify(){
	response.sendRedirect("http://localhost:8080/sample_1/modify.jsp"); 
}
</script>
</head>
<body>
<input type="button" name="findOne" value="findOne" onclick="findOne()" size="30" maxlength="20"><br>
<input type="button" name="findAll" value="findAll" size="30" maxlength="20"><br>
<input type="button" name="deleteOne" value="deleteOne" size="30" maxlength="20"><br>
<input type="button" name="modify" value="modify" size="30" maxlength="20"><br>
</body>
</html>