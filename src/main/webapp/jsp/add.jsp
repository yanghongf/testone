<%@ include file="/WEB-INF/common/meta.jsp"%>
<%@ include file="/WEB-INF/common/global.jsp"%>
<%@ include file="/WEB-INF/common/script.jsp"%>
<html>
<head>
<title>添加</title>
</head>
<body>
<form name = "myform" method="post" action="/add" >
	<div>username:
	<input id="add_username" type="text" name="username" size="30" maxlength="20"><br>
	</div>
	<div>password:
	<input id="add_password" type="password" name="password" size="30" maxlength="20"><br>
	</div>
	<div>
	<div><input id="add_button" type="button" onclick = "add_ajax()" value= "add"></div>
	</div>
</form>
</body>
</html>