package com.grupo53.tienda53.BO;

import java.util.ArrayList;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo53.tienda53.DAO.DetalleVentaDAO;
import com.grupo53.tienda53.DTO.DetalleVentaVO;

@RestController
public class DetalleVentaController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrardetalleventa")
	public void registrarDetalleVenta(DetalleVentaVO detalle) {
		DetalleVentaDAO Dao = new DetalleVentaDAO();
		Dao.registrarDetalleVenta(detalle);
	}

	@GetMapping("/listardetalleventa")
	public ArrayList<DetalleVentaVO> listaDetalleVentas() {
		DetalleVentaDAO Dao = new DetalleVentaDAO();
		return Dao.listaDetalleVentas();
	}

	@DeleteMapping("/eliminardetalleventa")
	public void eliminarDetalleVenta(Integer codigo_detalle_venta) {
		DetalleVentaDAO Dao = new DetalleVentaDAO();
		Dao.eliminarDetalleVenta(codigo_detalle_venta);
	}

	@PutMapping("/actualizardetalleventa")
	public void actualizarDetalleVenta(DetalleVentaVO actualizar_venta) {
		DetalleVentaDAO Dao = new DetalleVentaDAO();
		Dao.actualizarDetalleVenta(actualizar_venta);
	}
	
}