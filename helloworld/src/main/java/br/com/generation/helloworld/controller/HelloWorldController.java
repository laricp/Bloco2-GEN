package br.com.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Hello World")
public class HelloWorldController {
    
    @GetMapping
	public String habilidades() {
		
        return  "<b>Mentalidades</b>"
                + "<br /> "
                + "<br /> Mentalidade de crescimento"
                + "<br /> Persistência"
                + "<br /> "
                + "<br /> <b>Habilidades</b>"
                + "<br /> "
                + "<br /> Proatividade"
				+ "<br /> Comunicação";
	}

}
