package com.grupo53.tienda53.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.grupo53.tienda53.DTO.DetalleClientesVO;


public class DetalleClientesDAO {
	
	
	public ArrayList<DetalleClientesVO> detalleDeClientes() {
		//lista que contendra el o los usuarios obtenidos
		ArrayList<DetalleClientesVO> detalleclientes = new ArrayList<DetalleClientesVO>();
		
		//instancia de la conexión
		Conexion conex = new Conexion();

		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("select ventas.cedula_cliente, clientes.nombre_cliente, ventas.valor_venta from ventas left join clientes on ventas.cedula_cliente=clientes.cedula_cliente;");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				DetalleClientesVO Detalle = new DetalleClientesVO();
				Detalle.setNombre_cliente(res.getString("nombre_cliente"));
				Detalle.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				Detalle.setValor_venta(Double.parseDouble(res.getString("valor_venta")));
				
				detalleclientes.add(Detalle);
			}
			
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar los detalles de la venta del cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar los detalles de la venta del cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return detalleclientes;
	}

	

}
