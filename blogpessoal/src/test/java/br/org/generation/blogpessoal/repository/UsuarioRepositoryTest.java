package br.org.generation.blogpessoal.repository;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

import br.org.generation.blogpessoal.model.Usuario;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class UsuarioRepositoryTest {
	
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@BeforeAll
	void start() {

		usuarioRepository.save(new Usuario(0L, "Felipe Ricardo Maia", "felipermaia@email.com.br", "12465", "		"));
		
		usuarioRepository.save(new Usuario(0L, "Amanda Xavier Maia", "amandaxmaia@email.com.br", "13465", "		"));
		
		usuarioRepository.save(new Usuario(0L, "Pedro Suarez Maia", "pedrosmaia@email.com.br", "13465", "		"));
	
		usuarioRepository.save(new Usuario(0L, "Joana Gomez Guerra", "joanaguerra@email.com.br", "13465", "		"));
	
	}
	
	@Test
	@DisplayName("Retorna 1 usuario")
	public void deveRetornarUmUsuario() {
		
		Optional<Usuario> usuario = usuarioRepository.findByUsuario("felipermaia@email.com.br");
		assertTrue(usuario.get().getUsuario().equals("felipermaia@email.com.br"));
	}
	
	@Test
	@DisplayName("Retorna 3 usuarios")
	public void deveRetornarTresUsuarios() {
		
		List<Usuario> listaDeUsuarios = usuarioRepository.findAllByNomeContainingIgnoreCase("Maia");
		assertEquals(3, listaDeUsuarios.size());
		assertTrue(listaDeUsuarios.get(0).getNome().equals("Felipe Ricardo Maia"));
		assertTrue(listaDeUsuarios.get(1).getNome().equals("Amanda Xavier Maia"));
		assertTrue(listaDeUsuarios.get(2).getNome().equals("Pedro Suarez Maia"));
		
	}
	
}