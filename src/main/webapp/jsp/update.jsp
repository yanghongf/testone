<%@ include file="/WEB-INF/common/meta.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:set var="BASE" value="${pageContext.request.contextPath}" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>
<script type="text/javascript" src="${BASE }/js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="${BASE}/www/js/test.js"></script>
</head>
<body>
	<form name="myform" method="post" action="${BASE }/update1">
		<div>
			userName: <input type="text" name="id" size="30" maxlength="20"
				value="${user.id }"><br>
		</div>
		<div>
			username: <input type="text" id="showUsername" name="username"
				size="30" maxlength="20" value="${user.username }"><br>
		</div>
		<div>
			password: <input type="text" id="showPassword" name="password"
				size="30" maxlength="20" value="${user.password }"><br>
		</div>
		<div>
			<input type="button" onclick="formcom()" value="commit">
		</div>
	</form>
</body>
</html>