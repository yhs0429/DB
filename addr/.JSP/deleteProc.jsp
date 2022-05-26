<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="addr.*,java.util.*"%>
<% request.setCharacterEncoding("utf-8");%> 
<jsp:useBean id="dao" class="addr.AddrDAO"/>
<jsp:useBean id="dto" class="addr.AddrDTO"/>
<jsp:setProperty name="dto" property="*"/>
<%
	int addressnum = Integer.parseInt(request.getParameter("addressnum"));
	boolean flag = false;
	flag = dao.delete(addressnum);


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
			out.print("글삭제 성공~");
		}else{
			out.print("글삭제 실패~");
		}
	%>
	</div>

</div>
</body>
</html>