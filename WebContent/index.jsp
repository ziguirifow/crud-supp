<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Produto" %>
<%@ page import="dao.ProdutoDAO" %>
<%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="index.jsp" method="post">
		<label>Descrição:</label><br/>
		
		<input type="text" name="descricao" /><br/>
		
		<button type="submit">
			OK
		</button>
		
		<%
			try {
				out.print("<Table>");
				
					out.print("<tr>");
						out.print("<th>Código</th><th>Descrição</th><th>Preço</th>");
						
						ProdutoDAO prd = new ProdutoDAO();
						if(request.getParameter("descricao") == "" || request.getParameter("descricao") == null) {
							ArrayList<Produto> lista = prd.listarTodos();
							for(int num = 0; num < lista.size(); num++ ) {
								out.print("<tr>");
									out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
									out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
									out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
									out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+"&preco="+lista.get(num).getPreco_produto()+" '>Alterar</a></td>");
									out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+" '>Excluir</a></td>");
								out.print("</tr>");
							} 
						} else {
							ArrayList<Produto> lista = prd.listarTodosDescricao(request.getParameter("descricao"));
							for(int num = 0; num < lista.size(); num++ ) {
								out.print("<tr>");
									out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
									out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
									out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
									out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+"&preco="+lista.get(num).getPreco_produto()+" '>Alterar</a></td>");
									out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+" '>Excluir</a></td>");
								out.print("</tr>");
							}
						}
						
					out.print("</tr>");
				
				out.print("</Table>");
			} catch(Exception erro) {
				throw new RuntimeException("Erro 10: " + erro);
			}
		%>
		
		<a href="inserir.jsp">NOVO</a>
		
	</form>

</body>
</html>