package com.algaworks.algafood.api.controllers;

import com.algaworks.algafood.domain.model.Restaurante;
import com.algaworks.algafood.domain.repository.RestauranteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/restaurantes")
public class RestauranteController {

    @Autowired
    private RestauranteRepository restauranteRepository;

    @GetMapping
    public ResponseEntity<List<Restaurante>> listarTodos() {
        return ResponseEntity.ok(restauranteRepository.listar());
    }

    @GetMapping("/{restauranteId}")
    public ResponseEntity<Restaurante> buscar(@PathVariable("restauranteId") Long restauranteId) {

        var restauranteExistente = restauranteRepository.buscar(restauranteId);

        if (restauranteExistente != null) {
            return ResponseEntity.ok(restauranteRepository.buscar(restauranteId));
        }

        return ResponseEntity.notFound().build();
    }

}
