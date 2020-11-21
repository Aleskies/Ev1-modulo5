package com.duoc.prueba.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duoc.prueba.model.Usuario;
import com.duoc.prueba.repository.IUsuarioRepository;

@Controller
public class WebController {

	@Autowired
	private IUsuarioRepository repo;

	@ModelAttribute("usuario")
	public Usuario setUsuario() {
		return new Usuario();
	}

	@GetMapping("/")
	public String getIndex() {
		return "index";
	}

	@PostMapping("agregar")
	public String postAgregar(@Valid @ModelAttribute("usuario") Usuario usu, BindingResult br, Model model) {
		if (br.hasErrors()) {
			return "index";

		} else {
			repo.save(usu);
			model.addAttribute("usuarios", repo.findAllByOrderByApellidoAsc());
			return "listar";
		}
	}

	@GetMapping("generarLista")
	public String getGenerarLista(Model model) {
		model.addAttribute("usuarios", repo.findAllByOrderByApellidoAsc());
		return "listar";
	}

	@PostMapping("buscarUsuario")
	public String postBuscarUsuario(String rut, Model model) {
		
		model.addAttribute("usuarios", repo.findByRut(rut));
		return "listar";
	}

	@RequestMapping("eliminar")
	public String eliminar(String rut, Model model) {
		
		repo.deleteById(rut);
		model.addAttribute("usuarios", repo.findAllByOrderByApellidoAsc());
		return "listar";
	}
	
	@RequestMapping("buscarUsuario")
	public String buscarUsuario(String rut, Model model)
	{
		model.addAttribute("usu", repo.getOne(rut));
		return "editar";
	}

	@RequestMapping("encontrarUsuario")
	public String encontrarUsuario(String rut, Model model)
	{
		model.addAttribute("usu", repo.getOne(rut));
		return "editar";
	}
	
	@PostMapping("modificar")
	public String postModificar(@Valid @ModelAttribute("usuario") Usuario usu, BindingResult br, Model model) 
	{
		if (br.hasErrors()) {
			return "editar";

		} else {
			repo.save(usu);
			model.addAttribute("usuarios", repo.findAllByOrderByApellidoAsc());
			return "listar";
		}
	}
}
