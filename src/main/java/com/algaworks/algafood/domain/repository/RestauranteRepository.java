package com.algaworks.algafood.domain.repository;

import com.algaworks.algafood.domain.model.Restaurante;
import org.springframework.data.jpa.repository.JpaRepository;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

public interface RestauranteRepository extends JpaRepository<Restaurante, Long> {

    List<Restaurante> findByTaxaFreteBetween(BigDecimal taxaInicial, BigDecimal taxaFinal);

    Optional<Restaurante> findFirstRestauranteByNomeContaining(String nome);

    List<Restaurante> findTop2RestauranteByNomeContaining(String nome);

    boolean existsByNome(String nome);

    int countByCozinhaId(Long cozinha);

}
