<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.curso.service.ProductoService" %>
<%@ page import="com.curso.modelo.Producto" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alta de producto</title>
</head>
<body>
<h1>Alta de producto</h1>

<%
ProductoService ps = new ProductoService();
List<String> listaCategorias = ps.categorias();
%>
<form action="InsertarServlet" method="post">
    	<label for="nombre">Nombre</label>
    		<input type="text" name="nombre" required><br>
    	<label for="categoria">Categoria</label>	
    	<select name="categoria">
		<% for (String categoria:listaCategorias){	 %> 
  			<option value="<%=categoria%>"><%=categoria%></option> 
		<% }%> 
 		</select><br>
		<label for="precio">Precio</label>
    		<input type="number" name="precio" min="0" max="10000" step="0.01" required><br>
    	<label for="stock">Stock</label>
    		<input type="number" name="stock" required><br>	
    	<button  type="submit" id="enviar">Enviar</button>
    </form>
<a href='index.html'>Volver al índice.</a>
</body>
</html>