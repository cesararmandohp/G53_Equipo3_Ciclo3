package com.grupo53.tienda53.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.grupo53.tienda53.DTO.DetalleVentaVO;
import com.grupo53.tienda53.DTO.VentaVO;

public class DetalleVentaDAO {
	
	public void registrarDetalleVenta(DetalleVentaVO detalle) {
		//llama y crea una instancia de la clase encargada de hacer la conexión
		Conexion conex = new Conexion();

		try {
			//sentencia que se ejecutara en la base de datos
			Statement estatuto = conex.getConnection().createStatement();
			
			//String que contiene la sentencia insert a ejecutar
			String sentencia = "INSERT INTO detalle_ventas VALUES(" 
					+ detalle.getCodigo_detalle_venta() + ","
					+ detalle.getCantidad_producto() + "," 
					+ detalle.getCodigo_producto() + "," 
					+ detalle.getCodigo_venta()+ "," 
					+ detalle.getValor_total() + ","
				    + detalle.getValor_venta() + ","
				    + detalle.getValoriva() + ""				    
					+ ");";
			
			//se ejecuta la sentencia en la base de datos
			estatuto.executeUpdate(sentencia);
			//impresión en consola para verificación 
			System.out.println("Registrado " + sentencia);
			//cerrando la sentencia y la conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar la venta");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar la venta");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}
	
	
	public ArrayList<DetalleVentaVO> listaDetalleVentas() {
		//lista que contendra el o los usuarios obtenidos
		ArrayList<DetalleVentaVO> listadetalleventas = new ArrayList<DetalleVentaVO>();
		
		//instancia de la conexión
		Conexion conex = new Conexion();

		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM detalle_ventas");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				DetalleVentaVO detalleVenta = new DetalleVentaVO();
				detalleVenta.setCodigo_detalle_venta(Integer.parseInt(res.getString("codigo_venta")));
				detalleVenta.setCantidad_producto(Integer.parseInt(res.getString("cedula_cliente")));
				detalleVenta.setCodigo_producto(Integer.parseInt(res.getString("cedula_usuario")));
				detalleVenta.setCodigo_venta(Integer.parseInt(res.getString("cedula_usuario")));
				detalleVenta.setValor_total(Double.parseDouble(res.getString("total_venta")));
				detalleVenta.setValor_venta(Double.parseDouble(res.getString("valor_venta")));
				detalleVenta.setValoriva(Double.parseDouble(res.getString("valor_venta")));

				listadetalleventas.add(detalleVenta);
			}
			
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todas las ventas");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todas las ventas");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return listadetalleventas;
	}

	
	public void eliminarDetalleVenta(Integer codigo_detalle_venta) {
		
		//instancia de la conexion
		Conexion conex = new Conexion();

		try {
			//sentencia inicializada
			Statement consulta = conex.getConnection().createStatement();
			
			//preparando sentencia a realizar
			String sentencia = "delete from detalle_ventas where codigo_detalle_venta=" + codigo_detalle_venta + ";";
			
			//impresion de verificación
			System.out.println("Registrado " + sentencia);
			
			//ejecutando la sentencia en la base de datos
			consulta.execute(sentencia);
			
			//cerrando sentencia y conexión
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar la venta");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar la venta");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	public void actualizarDetalleVenta(DetalleVentaVO actualizar_venta) {
		
		//instancia de conexion
		Conexion conex = new Conexion();

		try {
			//inicializando sentencia
			Statement estatuto = conex.getConnection().createStatement();
			
			//String con la sentencia a ejecutar
			String sentencia = "UPDATE detalle_ventas "
					+ "SET cantidad_producto = "+actualizar_venta.getCantidad_producto()+","
					+ "codigo_producto = "+actualizar_venta.getCodigo_producto()+","
					+ "codigo_venta = "+actualizar_venta.getCodigo_venta()+","
					+ "valor_total = "+actualizar_venta.getValor_total()+","
					+ "valor_venta = "+actualizar_venta.getValoriva()+","									
					+ "valoriva = "+actualizar_venta.getValoriva()+" "
					+ "WHERE codigo_detalle_venta = "+actualizar_venta.getCodigo_detalle_venta()+";";
			
			//ejecuta la sentencia 
			estatuto.executeUpdate(sentencia);
			
			//verificación por consola de la sentencia
			System.out.println("Registrado " + sentencia);
			
			//cerrando sentencia y conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo actualizar  el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}	
}
