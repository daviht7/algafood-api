package com.algaworks.algafood.domain.repository;

import com.algaworks.algafood.domain.model.Cozinha;

import java.util.List;
import java.util.Optional;

public interface CozinhaRepository extends CustomJpaRepository<Cozinha, Long> {

    Optional<Cozinha> findByNome(String nome);

    List<Cozinha> findTodosByNomeContaining(String nome);

}
