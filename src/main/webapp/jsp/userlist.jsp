<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/global.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>用户</title>
<%@ include file="/WEB-INF/common/style.jsp"%>
<script type="text/javascript" src="${BASE}/www/js/test.js"></script>
</head>
<body>
	<div id="content">
		<div id="main">
			<div class="css-panel">
				<div class="css-panel-header">
					<h3>用户列表</h3>
				</div>
				<div class="css-panel-content">
					<div class="css-row">
						<div class="css-left">
							<div id="product_search_form">
								<div name="searchform" class="css-search" method="post"
									action="${BASE }/search_users">
									<input id="search_text" type="text" name="name"
										placeholder="产品"> <span>
										<button onclick="search()">搜索</button>
									</span> <span>
										<button onclick="add()">添加</button>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div id="user_list">
						<%@ include file="userlist2.jsp"%>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>