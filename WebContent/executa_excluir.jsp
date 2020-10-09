<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.ProdutoDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Excluindo</title>
</head>
<body>

	<%
		try {
		ProdutoDAO prd = new ProdutoDAO();
		prd.excluir(Integer.parseInt(request.getParameter("codigo")));
		response.sendRedirect("index.jsp");
	} catch (Exception erro) {
		throw new RuntimeException("Erro 9: " + erro);
	}
	%>

</body>
</html>