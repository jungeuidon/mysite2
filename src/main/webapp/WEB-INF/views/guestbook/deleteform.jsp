<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("no");
%>
<%@ include file="/WEB-INF/views/includes/home.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="${home }/assets/css/guestbook.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<h1>MySite</h1>
			<jsp:include page="/WEB-INF/views/includes/header.jsp" />
		</div>
		<div id="content">
			<div id="guestbook" class="delete-form">
				<form method="post" action="${home }/guestbook">
					<input type="hidden" name="a" value="delete">
					<input type='hidden' name="no" value="<%= no %>">
					<label>비밀번호</label>
					<input type="password" name="password"">
					<input type="submit" value="확인">
				</form>
				<a href="${home }/guestbook">방명록 리스트</a>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/includes/navigation.jsp"/>
		<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	</div>
</body>
</html>