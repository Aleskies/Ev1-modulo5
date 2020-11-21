package com.duoc.prueba.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duoc.prueba.model.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, String>{
	
	//Se pueden crear todas la querys que se requieran
	List<Usuario> findByRut(String rut);
	List<Usuario> deleteByNombre(String nombre);
	List<Usuario> findAllByOrderByApellidoAsc();
	List<Usuario> findAllByOrderByRutAsc();
	List<Usuario> deleteByRut(String rut);
}
