package com.curso.servlet;

import java.io.IOException;

import com.curso.service.ProductoService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet para buscar productos 
 * @author Sergio Castro
 * @version 1.0 2024/12/17
 */
public class BuscarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductoService servicio = new ProductoService();
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String categoria = request.getParameter("categoria");
		
	
		
		request.setAttribute("categoria", servicio.productosPorCategoria(categoria));
		RequestDispatcher dispatcher = request.getRequestDispatcher("buscarResultado.jsp");
		dispatcher.forward(request, response);
	}

}
