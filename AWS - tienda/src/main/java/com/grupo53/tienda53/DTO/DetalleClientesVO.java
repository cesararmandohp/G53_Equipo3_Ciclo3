package com.grupo53.tienda53.DTO;

import java.io.Serializable;

public class DetalleClientesVO implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String nombre_cliente;
	private Integer cedula_cliente;
	private Double valor_venta;
	
	public String getNombre_cliente() {
		return nombre_cliente;
	}
	public void setNombre_cliente(String nombre_usuario) {
		this.nombre_cliente = nombre_usuario;
	}
	public Integer getCedula_cliente() {
		return cedula_cliente;
	}
	public void setCedula_cliente(Integer cedula_cliente) {
		this.cedula_cliente = cedula_cliente;
	}
	public Double getValor_venta() {
		return valor_venta;
	}
	public void setValor_venta(Double valor_venta) {
		this.valor_venta = valor_venta;
	}
	
	
}
