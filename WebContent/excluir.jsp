<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Excluir</title>
</head>
<body>

	<form action="executa_excluir.jsp" method="post">
		<label>C�digo:</label><br/>
		<input type="text" name="codigo" value="<%=request.getParameter("codigo")%>" /><br/>
		
		<label>Descri��o:</label><br/>
		<input type="text" name="descricao" value="<%=request.getParameter("descricao")%>" /><br/>
		
		<button type="submit">
			OK
		</button>
		
	</form>

</body>
</html>