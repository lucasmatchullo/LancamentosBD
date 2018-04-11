package br.com.sinform.enderecos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.sinform.enderecos.model.Cidade;
import br.com.sinform.enderecos.model.Estado;
import br.com.sinform.enderecos.repository.CidadesRepository;
import br.com.sinform.enderecos.repository.EstadosRepository;

@Controller
@RequestMapping("/cidades")
public class CidadesController {
	@Autowired
	private CidadesRepository cidadesRepository;
	@Autowired
	private EstadosRepository estadosRepository;
	
	@GetMapping("/novo")
	public ModelAndView novo() {
		ModelAndView mv = new ModelAndView ("CadastroCidade");
		mv.addObject(new Cidade());
		return mv;
	}
	
	@GetMapping
	public ModelAndView listarCidades(){
		List<Cidade> cidades = cidadesRepository.findAll();
		ModelAndView mv = new ModelAndView("ListaCidades");
		mv.addObject("cidades", cidades);
		return mv;
	}
	@ModelAttribute(name="estados")
	public List<Estado> estados(){
		return estadosRepository.findAll();
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String salvarCidades(Cidade cidade) {
		cidadesRepository.save(cidade);
		return "redirect:/cidades/novo";
	}
	
	@RequestMapping("{id}")
	public ModelAndView edicao(@PathVariable("id") Cidade cidade) {
		ModelAndView mv = new ModelAndView("CadastroCidade");
		mv.addObject(cidade);
		return mv;
	}
	@RequestMapping(value="{id}", method=RequestMethod.DELETE)
	public String excluir(@PathVariable Long id) {
		
		cidadesRepository.delete(id);
		
		return "redirect:/cidades";
	}
}
