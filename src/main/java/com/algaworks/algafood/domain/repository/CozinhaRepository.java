package com.algaworks.algafood.domain.repository;

import com.algaworks.algafood.domain.model.Cozinha;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface CozinhaRepository extends JpaRepository<Cozinha, Long> {

    Optional<Cozinha> findByNome(String nome);

    List<Cozinha> findTodosByNomeContaining(String nome);

}
