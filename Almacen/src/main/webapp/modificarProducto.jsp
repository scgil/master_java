<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.curso.modelo.Producto" %>
<%@ page import="com.curso.service.ProductoService" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Producto a modificar</title>
</head>
<body>

<%
ProductoService ps = new ProductoService();
List<Producto> productos = ps.productos();
List<String> listaCategorias = ps.categorias();

int indice = (int)request.getAttribute("indiceModificar");

%>

<h1>Modifica el producto</h1>

<form action="ModificarProductoServlet" method="post">
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
    	<label for="indice"></label>
    		<input type="hidden" name="indiceModificar" value="<%= indice%>"><br>
    	<button  type="submit" id="enviar">Enviar</button>
    </form>
<a href='index.html'>Volver al índice.</a>


</body>
</html>