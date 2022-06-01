<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="bbs.*"%>
<% request.setCharacterEncoding("utf-8");%> 
<jsp:useBean id="dao" class="bbs.BbsDAO"/>
<jsp:useBean id="dto" class="bbs.BbsDTO"/>
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
			out.print("글 등록 성공");
		}else{
			out.print("글 등록 실패");
		}
	%>
	</div>
	<button class='btn' onclick="location.href='createForm.jsp'">다시등록</button>
	<button class='btn' onclick="location.href='list.jsp'">목록</button>
</div>
</body>
</html>