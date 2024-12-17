package com.curso.modelo;

/**
 * Clase que representa un producto. Permite instanciar objetos 
 * @author Sergio Castro
 * @version 1.0 2024/12/17
 */
public class Producto {
	private static int contadorId = 0;
	
	private int id;
	private String nombre;
	private String categoria;
	private double precio;
	private int stock;
	
	public Producto(String nombre, String categoria, double precio, int stock) {
		super();
		this.id = contadorId;
		this.nombre = nombre;
		this.categoria = categoria;
		this.precio = precio;
		this.stock = stock;
		contadorId++;
		
	}
	public int getId() {
		return id;
	}
	
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria=categoria;
	}
	
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	
	
	
	

}
