<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.curso.service.ProductoService" %>
<%@ page import="com.curso.modelo.Producto" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buscar producto</title>
</head>
<body>
<h1>Buscar producto por categoria</h1>

<%
ProductoService ps = new ProductoService();
List<String> listaCategorias = ps.categorias();
%>

<form action="BuscarServlet" method="post">
 <select name="categoria">
 <% for (String categoria:listaCategorias){	 %> 
  <option value="<%=categoria%>"><%=categoria%></option> 
<% }%> 
 </select>
 <input type="submit" value="Enviar">
</form>
<a href='index.html'>Volver al índice.</a>
</body>
</html>