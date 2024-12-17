<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.curso.modelo.Producto" %>
<%@ page import="com.curso.service.ProductoService" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eliminar productos</title>
</head>
<body>

<%
ProductoService ps = new ProductoService();
List<Producto> productos = ps.productos();

%>

<h1>Eliminar Productos</h1>

<%
for(int i=0; i< productos.size(); i++){

%>

<p> Nombre: <%= productos.get(i).getNombre() %> --- Categoria: <%= productos.get(i).getCategoria() %>
--- Precio: <%= productos.get(i).getPrecio() %> --- Stock: <%= productos.get(i).getStock() %>--- <a href="EliminarServlet?indexEliminar=<%= i %>">Eliminar</a></p><br>
		
<%} %>

<a href='index.html'>Volver al índice.</a>


</body>
</html>