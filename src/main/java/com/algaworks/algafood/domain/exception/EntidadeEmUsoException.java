package com.algaworks.algafood.domain.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;

//@ResponseStatus(value = HttpStatus.CONFLICT,reason = "Entidade em uso")
public class EntidadeEmUsoException extends ResponseStatusException {

    private static final long serialVersionUID = 1L;


    public EntidadeEmUsoException(HttpStatus status, String mensagem) {
        super(status, mensagem);
    }

    public EntidadeEmUsoException(String mensagem) {
        this(HttpStatus.NOT_FOUND, mensagem);
    }


}
