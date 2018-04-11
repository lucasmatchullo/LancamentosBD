package br.com.sinform.enderecos.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="cidades")
public class Cidade {
	@Id
	@GeneratedValue
	private Long id;
	private String nomedacidade;
	@ManyToOne
	@JoinColumn(name="estado_id")
	private Estado estado;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNomedacidade() {
		return nomedacidade;
	}
	public void setNomedacidade(String nomedacidade) {
		this.nomedacidade = nomedacidade;
	}
	public Estado getEstado() {
		return estado;
	}
	public void setEstado(Estado estado) {
		this.estado = estado;
	}
}
