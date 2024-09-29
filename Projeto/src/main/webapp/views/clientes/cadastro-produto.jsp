<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Produto</title>
</head>
<body>
	<c:if test="${not empty erro}">
		<div style="color: red;">${erro}</div>
	</c:if>
	<c:if test="${not empty sucesso}">
		<div style="color: green;">${sucesso}</div>
	</c:if>
	<br />
	<form action="${pageContext.request.contextPath}/ProdutoServlet"
		method="post">
		<label for="nome">Nome do Produto:</label> <input type="text"
			id="nome" name="nome" value="${param.nome}"><br>
		<br> <label for="quantidade">Quantidade:</label> <input
			type="text" id="quantidade" name="quantidade"
			value="${param.quantidade}"><br>
		<br> <input type="submit" value="Cadastrar Produto">
	</form>
</body>
</html>