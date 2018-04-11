package br.com.sinform.enderecos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.sinform.enderecos.model.Estado;
import br.com.sinform.enderecos.repository.EstadosRepository;

@Controller
@RequestMapping("/estados")
public class EstadosController {
	@Autowired
	private EstadosRepository estadosRepository;
	
	@GetMapping
	public ModelAndView listarEstados(){
		List<Estado> estados = estadosRepository.findAll();
		ModelAndView mv = new ModelAndView("ListaEstados");
		mv.addObject("estados", estados);
		return mv;
	}
}
