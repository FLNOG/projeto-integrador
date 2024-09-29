<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dados do cliente</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>
	<!-- Incluindo o menu de navegação -->
	<jsp:include page="../../includes/menu.jsp" />
	Nome: ${cliente.nome}
	<br /> Sobrenome: ${cliente.sobrenome}
	<br /> Sexo: ${cliente.sexo}
	<br />
	<c:if test="${not empty cliente.cidade}">
Cidade: ${cliente.cidade}
</c:if>
	<ul>
		<c:forEach var="idioma" items="${cliente.getIdiomas()}">
			<li>Idioma: ${idioma}</li>
		</c:forEach>
	</ul>
	<c:choose>
		<c:when test="${cliente.sexo == 'Masculino'}">
			<p>Cliente: ${cliente.nome} cadastrado com sucesso!.</p>
		</c:when>
		<c:when test="${cliente.sexo == 'Feminino'}">
			<p>Cliente: ${cliente.nome} cadastrada com sucesso!.</p>
		</c:when>
		<c:otherwise>
			<p>Cliente: ${cliente.nome} cadastrad(o)a com sucesso!.</p>
		</c:otherwise>
	</c:choose>
	<br />
	<jsp:include page="../../includes/footer.jsp" />