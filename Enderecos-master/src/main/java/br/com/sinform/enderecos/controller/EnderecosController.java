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
import br.com.sinform.enderecos.model.Endereco;
import br.com.sinform.enderecos.model.Estado;
import br.com.sinform.enderecos.repository.CidadesRepository;
import br.com.sinform.enderecos.repository.EnderecosRepository;
import br.com.sinform.enderecos.repository.EstadosRepository;

@Controller
@RequestMapping("/enderecos")
public class EnderecosController {
	
	@Autowired
	private EnderecosRepository enderecosRepository;
	@Autowired
	private CidadesRepository cidadesRepository;
	@Autowired
	private EstadosRepository estadosRepository;
	
	@GetMapping("/novo")
	public ModelAndView novo() {
		ModelAndView mv = new ModelAndView ("CadastroEndereco");
		mv.addObject(new Endereco());
		return mv;
	}

	@GetMapping
	public ModelAndView listarEnderecos(){
		List<Endereco> enderecos = enderecosRepository.findAll();
		ModelAndView mv = new ModelAndView("ListaEnderecos");
		mv.addObject("enderecos", enderecos);
		return mv;
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String salvarEnderecos(Endereco endereco) {
		enderecosRepository.save(endereco);
		return "redirect:/enderecos/novo";
	}
	@ModelAttribute(name="cidades")
	public List<Cidade> cidades(){
		return cidadesRepository.findAll();
	}
	@ModelAttribute(name="estados")
	public List<Estado> estados(){
		return estadosRepository.findAll();
	}
	@RequestMapping("{id}")
	public ModelAndView edicao(@PathVariable("id") Endereco endereco) {
		ModelAndView mv = new ModelAndView("CadastroEndereco");
		mv.addObject(endereco);
		return mv;
	}
	@RequestMapping(value="{id}", method=RequestMethod.DELETE)
	public String excluir(@PathVariable Long id) {
		
		enderecosRepository.delete(id);
		
		return "redirect:/enderecos";
	}
}
