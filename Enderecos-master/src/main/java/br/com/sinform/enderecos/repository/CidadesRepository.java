package br.com.sinform.enderecos.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.sinform.enderecos.model.Cidade;

public interface CidadesRepository extends JpaRepository<Cidade, Long>{

}
