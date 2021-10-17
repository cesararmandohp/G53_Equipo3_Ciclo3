package com.grupo53.tienda53.BO;

import java.util.ArrayList;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo53.tienda53.DAO.DetalleClientesDAO;
import com.grupo53.tienda53.DTO.DetalleClientesVO;

@RestController
public class DetalleClientesController {

	@GetMapping("/listardetalleclientes")
	public ArrayList<DetalleClientesVO> listaDetalleClientes() {
		DetalleClientesDAO Dao = new DetalleClientesDAO();
		return Dao.detalleDeClientes();
	}
	
	@GetMapping("/sumatotalventas")
	public Integer sumaTotalVentas() {
		DetalleClientesDAO Dao = new DetalleClientesDAO();
		return Dao.sumaTotalVentas();
	}
	
}
