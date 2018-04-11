package br.com.sinform.enderecos.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.sinform.enderecos.model.Endereco;

public interface EnderecosRepository extends JpaRepository<Endereco, Long>{

}
