package com.algaworks.algafood.api.controllers;

import com.algaworks.algafood.domain.model.Cozinha;
import com.algaworks.algafood.domain.repository.CozinhaRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/cozinhas")
public class CozinhaController {

    @Autowired
    private CozinhaRepository cozinhaRepository;

    @GetMapping
    public List<Cozinha> listar() {
        return cozinhaRepository.listar();
    }

    @GetMapping("/{cozinhaId}")
    public ResponseEntity<Cozinha> buscar(@PathVariable("cozinhaId") Long cozinhaId) {

        var cozinha = cozinhaRepository.buscar(cozinhaId);

        if (cozinha != null) {
            return ResponseEntity.ok(cozinha);
        }

        return ResponseEntity.notFound().build();
    }

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping
    public void adicionar(@RequestBody Cozinha cozinha) {
        cozinhaRepository.salvar(cozinha);
    }

    @ResponseStatus(HttpStatus.NO_CONTENT)
    @PutMapping("/{cozinhaId}")
    public ResponseEntity<Cozinha> atualizar(@PathVariable("cozinhaId") Long cozinhaId, @RequestBody Cozinha cozinha) {
        Cozinha cozinhaExistente = cozinhaRepository.buscar(cozinhaId);
        if(cozinhaExistente != null) {
            BeanUtils.copyProperties(cozinha, cozinhaExistente,"id");
            cozinhaRepository.salvar(cozinhaExistente);

            return ResponseEntity.ok(cozinhaExistente);
        }
        return ResponseEntity.notFound().build();
    }

}
