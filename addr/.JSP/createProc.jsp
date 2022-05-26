<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="addr.*"%>
<% request.setCharacterEncoding("utf-8");%> 
<jsp:useBean id="dao" class="addr.AddrDAO"/>
<jsp:useBean id="dto" class="addr.AddrDTO"/>
<jsp:setProperty name="dto" property="*"/>
<%
	boolean flag = dao.create(dto);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/menu/top.jsp"></jsp:include>
<div class="container">
	<div class="well well-lg">
	<%
		if(flag){
			out.print("주소록 작성 성공");
		}else{
			out.print("주소록 작성 실패");
		}
	%>
	</div>
	<button class='btn' onclick="location.href='createForm.jsp'">재작성</button>
	<button class='btn' onclick="location.href='list.jsp'">목록</button>
</div>
</body>
</html>