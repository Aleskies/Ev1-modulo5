package com.duoc.prueba.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;

@Entity
public class Usuario {
	
	@Id
	@Column(length = 50, nullable = false, name = "rut")
	@Size(min = 1, max = 50)
	@NotNull
	private String rut;
	
	@Column(length = 50, nullable = false, name = "dv")
	@Size(max = 1)
	@NotNull
	private String dv;
	
	@Column(length = 50, nullable = false, name = "nombre")
	@Size(min = 1, max = 50)
	@NotNull
	private String nombre;
	
	@Column(length = 50, nullable = false, name = "apellido")
	@Size(min = 1, max = 50)
	@NotNull
	private String apellido;
	
	@Column(length = 50, nullable = false, name = "direccion")
	@Size(min = 1, max = 50)
	@NotNull
	private String direccion;
	
	@Column(length = 50, nullable = false, name = "ciudad")
	@Size(min = 1, max = 50)
	@NotNull
	private String ciudad;

	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut = rut;
	}

	public String getDv() {
		return dv;
	}

	public void setDv(String dv) {
		this.dv = dv;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	
	
	
}
