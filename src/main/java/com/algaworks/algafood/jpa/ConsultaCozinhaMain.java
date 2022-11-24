package com.algaworks.algafood.jpa;

import com.algaworks.algafood.AlgafoodApiApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.ApplicationContext;

public class ConsultaCozinhaMain {

    public static void main(String[] args) {

        ApplicationContext applicationContext = new SpringApplicationBuilder(AlgafoodApiApplication.class)
                .web(WebApplicationType.NONE)
                .run(args);

        CadastroCozinha cadastroCozinha = applicationContext.getBean(CadastroCozinha.class);

        var cozinhas = cadastroCozinha.listar();

        for (var cozinha : cozinhas) {
            System.out.println(cozinha.getNome());
        }

    }
}
