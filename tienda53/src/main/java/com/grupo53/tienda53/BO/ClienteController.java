package com.grupo53.tienda53.BO;

import java.util.ArrayList;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo53.tienda53.DAO.ClienteDAO;
import com.grupo53.tienda53.DTO.ClienteVO;


@RestController
public class ClienteController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */
	
	@PostMapping("/registrarcliente")
	public void registrarCliente(ClienteVO cliente) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.registrarCliente(cliente);
	}

	@GetMapping("/consultarcliente")
	public ArrayList<ClienteVO> consultarClientes(Integer cedula_cliente) {
		ClienteDAO Dao = new ClienteDAO();
		return Dao.consultarCliente(cedula_cliente);
	}

	@GetMapping("/listarclientes")
	public ArrayList<ClienteVO> listaDeClientes() {
		ClienteDAO Dao = new ClienteDAO();
		return Dao.listaDeClientes();
	}
	@DeleteMapping("/eliminarcliente")
	public void eliminarCliente(Integer cedula_cliente) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.eliminarCliente(cedula_cliente);
	}
	
	@PutMapping("/actualizarcliente")
	public void actualizarCliente(ClienteVO cliente) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.actualizarCliente(cliente);
	}
	

}
