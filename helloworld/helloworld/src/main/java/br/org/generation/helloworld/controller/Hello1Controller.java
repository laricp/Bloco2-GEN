package br.org.generation.helloworld.controller;

    	import org.springframework.web.bind.annotation.GetMapping;
    	import org.springframework.web.bind.annotation.RequestMapping;
    	import org.springframework.web.bind.annotation.RestController;

    	@RestController
    	@RequestMapping("/Hello1")
    	public class Hello1Controller {
    	    
    	    @GetMapping
    		public String habilidades() {
    			
    	        return  "<b>Mentalidades</b>"
    	                + "<br /> "
    	                + "<br /> Orientação ao futuro"
    	                + "<br /> Mentalidade de crescimento"
    	                + "<br /> Persistência"
    	                + "<br /> "
    	                + "<br /> <b>Habilidades</b>"
    	                + "<br /> "
    	                + "<br /> Atenção aos detalhes"
    	                + "<br /> Proatividade"
    					+ "<br /> Comunicação";
   	
	}
}