package br.org.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("/Hello2")
public class Hello2Controller {
	@GetMapping
	public String atividade() {
		return  "<b>Objetivo de aprendizagem da semana:</b>"
				+ "<br /> "
				+ "<br /> Aprender a fazer um CRUD no Spring!";
	}
}