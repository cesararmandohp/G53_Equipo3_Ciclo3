package com.grupo53.tienda53.DAO;

import java.sql.*;
import java.util.ArrayList;
import com.grupo53.tienda53.DTO.ClienteVO;


/**
 * Clase que permite el acceso a la base de datos
 *
 */

public class ClienteDAO {
	
	/**
	 * Permite registrar un cliente nuevo
	 * 
	 * @param cliente
	 */
	public void registrarCliente(ClienteVO cliente) {
		//llama y crea una instancia de la clase encargada de hacer la conexión
		Conexion conex = new Conexion();

		try {
			//sentencia que se ejecutara en la base de datos
			Statement estatuto = conex.getConnection().createStatement();
			
			//String que contiene la sentencia insert a ejecutar
			String sentencia = "INSERT INTO clientes VALUES(" 
					+ cliente.getCedula_cliente() + "," + "'"
					+ cliente.getDireccion_cliente() + "'," + "'" 
					+ cliente.getEmail_cliente() + "'," + "'" 
					+ cliente.getNombre_cliente()+ "'," + "'" 
					+ cliente.getTelefono_cliente() + "'" 
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
			System.out.println("No se pudo insertar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	
	/**
	 * permite consultar el cliente asociado a la cédula enviada como parámetro
	 * 
	 * @param cédula
	 * @return
	 */
	public ArrayList<ClienteVO> consultarCliente(Integer cedula_cliente) {	
		//lista que contendrá el o los clientes obtenidos
		ArrayList<ClienteVO> listaclientes = new ArrayList<ClienteVO>();		
		//instancia de la conexión
		Conexion conex = new Conexion();
		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("SELECT * FROM clientes where cedula_cliente = ? ");		
			// se cambia el comodin ? por el dato que ha llegado en el parametro de la función
			consulta.setInt(1, cedula_cliente);			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();			
			//cree un objeto basado en la clase entidad con los datos encontrados
			if (res.next()) {
				ClienteVO Cliente = new ClienteVO();
				Cliente.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				Cliente.setDireccion_cliente(res.getString("direccion_cliente"));
				Cliente.setEmail_cliente(res.getString("email_cliente"));
				Cliente.setNombre_cliente(res.getString("nombre_cliente"));
				Cliente.setTelefono_cliente(res.getString("telefono_cliente"));

				listaclientes.add(Cliente);
			}
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return listaclientes;
	}
	
	/**
	 * permite consultar la lista de todos los clientes
	 * 
	 * @return
	 */
	public ArrayList<ClienteVO> listaDeClientes() {
		//lista que contendra el o los usuarios obtenidos
		ArrayList<ClienteVO> listaclientes = new ArrayList<ClienteVO>();
		
		//instancia de la conexión
		Conexion conex = new Conexion();

		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM clientes");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				ClienteVO Cliente = new ClienteVO();
				Cliente.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				Cliente.setDireccion_cliente(res.getString("direccion_cliente"));
				Cliente.setEmail_cliente(res.getString("email_cliente"));
				Cliente.setNombre_cliente(res.getString("nombre_cliente"));
				Cliente.setTelefono_cliente(res.getString("telefono_cliente"));

				listaclientes.add(Cliente);
			}
			
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los clientes");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los clientes");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return listaclientes;
	}
	
	/**
	 * permite eliminar un cliente
	 * 
	 * @return
	 */
public void eliminarCliente(Integer cedula_cliente) {
		
		//instancia de la conexion
		Conexion conex = new Conexion();

		try {
			//sentencia inicializada
			Statement consulta = conex.getConnection().createStatement();
			
			//preparando sentencia a realizar
			String sentencia = "delete from clientes where cedula_cliente=" + cedula_cliente + ";";
			
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
			System.out.println("No se pudo eliminar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}
	

/**
 * permite actuaslizar un cliente
 * 
 * @return
 */
public void actualizarCliente(ClienteVO cliente) {
	
	//instancia de conexion
	Conexion conex = new Conexion();

	try {
		//inicializando sentencia
		Statement estatuto = conex.getConnection().createStatement();
		
		//String con la sentencia a ejecutar
		String sentencia = "UPDATE clientes "
				+ "SET email_cliente = '"+cliente.getEmail_cliente()+"',"
				+ "nombre_cliente = '"+cliente.getNombre_cliente()+"',"
				+ "direccion_cliente = '"+cliente.getDireccion_cliente()+"',"
				+ "telefono_cliente = '"+cliente.getTelefono_cliente()+"' "
				+ "WHERE cedula_cliente = "+cliente.getCedula_cliente()+";";
		
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
