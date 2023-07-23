package com.algaworks.algafood.domain.exception;

public class RestauranteNaoEncontradoException extends EntidadeNaoEncontradaException {

    public static final String MSG_RESTAURANTE_NAO_ENCONTRADA = "Não existe cadastro de restaurante com código %d.";
    private static final long serialVersionUID = 1L;

    public RestauranteNaoEncontradoException(String mensagem) {
        super(mensagem);
    }

    public RestauranteNaoEncontradoException(Long restauranteId) {
        super(String.format(MSG_RESTAURANTE_NAO_ENCONTRADA, restauranteId));
    }


}
