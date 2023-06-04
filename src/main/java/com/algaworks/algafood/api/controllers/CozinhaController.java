package com.algaworks.algafood.api.controllers;

import com.algaworks.algafood.domain.exception.EntidadeEmUsoException;
import com.algaworks.algafood.domain.exception.EntidadeNaoEncontradaException;
import com.algaworks.algafood.domain.model.Cozinha;
import com.algaworks.algafood.domain.repository.CozinhaRepository;
import com.algaworks.algafood.domain.service.CadastroCozinhaService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/cozinhas")
public class CozinhaController {

    private final CozinhaRepository cozinhaRepository;

    private final CadastroCozinhaService cadastroCozinhaService;

    public CozinhaController(CozinhaRepository cozinhaRepository, CadastroCozinhaService cadastroCozinhaService) {
        this.cozinhaRepository = cozinhaRepository;
        this.cadastroCozinhaService = cadastroCozinhaService;
    }

    @GetMapping
    public List<Cozinha> listar() {
        return cozinhaRepository.findAll();
    }

    @GetMapping("/{cozinhaId}")
    public ResponseEntity<Cozinha> buscar(@PathVariable("cozinhaId") Long cozinhaId) {

        var cozinha = cozinhaRepository.findById(cozinhaId);

        if (cozinha.isPresent()) {
            return ResponseEntity.ok(cozinha.get());
        }

        return ResponseEntity.notFound().build();
    }

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping
    public void adicionar(@RequestBody Cozinha cozinha) {
        cadastroCozinhaService.salvar(cozinha);
    }

    @ResponseStatus(HttpStatus.NO_CONTENT)
    @PutMapping("/{cozinhaId}")
    public ResponseEntity<Cozinha> atualizar(@PathVariable("cozinhaId") Long cozinhaId, @RequestBody Cozinha cozinha) {
        var cozinhaExistente = cozinhaRepository.findById(cozinhaId);
        if (cozinhaExistente.isPresent()) {
            BeanUtils.copyProperties(cozinha, cozinhaExistente.get(), "id");
            var cozinhaSalva = cadastroCozinhaService.salvar(cozinhaExistente.get());

            return ResponseEntity.ok(cozinhaSalva);
        }
        return ResponseEntity.notFound().build();
    }

    @DeleteMapping("/{cozinhaId}")
    public ResponseEntity<?> deletar(@PathVariable("cozinhaId") Long cozinhaId) {

        try {
            cadastroCozinhaService.excluir(cozinhaId);
            return ResponseEntity.noContent().build();

        } catch (EntidadeEmUsoException e) {
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        } catch (EntidadeNaoEncontradaException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }

    }

}
