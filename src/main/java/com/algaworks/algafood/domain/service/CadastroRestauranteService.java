package com.algaworks.algafood.domain.service;

import com.algaworks.algafood.domain.model.Restaurante;
import com.algaworks.algafood.domain.repository.RestauranteRepository;
import org.springframework.stereotype.Service;

@Service
public class CadastroRestauranteService {

    private final RestauranteRepository restauranteRepository;

    public CadastroRestauranteService(RestauranteRepository restauranteRepository) {
        this.restauranteRepository = restauranteRepository;
    }
    public Restaurante salvar(Restaurante restaurante) {
        return restauranteRepository.salvar(restaurante);
    }

}
