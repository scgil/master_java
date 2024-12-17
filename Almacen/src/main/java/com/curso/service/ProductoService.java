package com.curso.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.curso.modelo.Producto;

/**
 * Clase que representa un servicio de Producto. Posee un listado de productos y distintas operaciones sobre la lista 
 * @author Sergio Castro
 * @version 1.0 2024/12/17
 */

public class ProductoService {
	
	private static List<Producto> productos = new ArrayList<Producto>();
	static {
		
		Producto p1 = new Producto("Nevera", "Electrodomesticos", 500.50, 5);
		Producto p2 = new Producto("Lavadora", "Electrodomesticos", 350.10, 3);
		Producto p3 = new Producto("Pantalon", "Textil", 50.0, 10);
		Producto p4 = new Producto("Camisa", "Textil", 42.0, 15);
		
		productos.add(p1);
		productos.add(p2);
		productos.add(p3);
		productos.add(p4);
	}
		
			
	public List<Producto> productosPorCategoria(String categoria) {
		List<Producto> productosCategoria = new ArrayList<>();
		for(Producto producto :productos) {
			if(producto.getCategoria().equals(categoria)) {
				productosCategoria.add(producto);
			}
			
		}
		return productosCategoria;
		
	}
	
	public List<String> categorias(){
		List<String> categorias = new ArrayList<>();
		for(Producto producto :productos) {
			
			if(!categorias.contains(producto.getCategoria())) {
				categorias.add(producto.getCategoria());
			}
			
		}
		return categorias;
	}
	
	public List<Producto> productos(){
		return productos;
	}
	
	public void insertarProducto(Producto producto) {
		productos.add(producto);
		
	}
	public void eliminarProducto(int indice) {
		productos.remove(indice);
	}
	public void modificar(int indice, String nombre, String categoria, double precio, int stock) {
		Producto p = productos.get(indice);
		p.setNombre(nombre);
		p.setCategoria(categoria);
		p.setPrecio(precio);
		p.setStock(stock);
		
	}
	
	

}
