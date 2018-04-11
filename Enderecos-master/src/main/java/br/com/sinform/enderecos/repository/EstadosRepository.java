package br.com.sinform.enderecos.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.sinform.enderecos.model.Estado;

public interface EstadosRepository extends JpaRepository<Estado, Long>{

}
