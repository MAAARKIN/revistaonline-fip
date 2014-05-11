package br.com.fip.gati.revistaonline.resources.web.controllers;

import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;
import br.com.fip.gati.revistaonline.domain.model.Autor;
import br.com.fip.gati.revistaonline.domain.repositorio.AutorRepositorio;

@Resource
public class AutorController {
	private AutorRepositorio repositorio;
	private Result result;
	
	public AutorController(AutorRepositorio repositorio, Result result) {
		this.repositorio = repositorio;
		this.result = result;
	}
	
	@Post("/consultaAutor/{email}")
	public void consultaAutor(String email) {
		if(email == null || email.isEmpty()) {
			result.nothing();			
		} else {
			Autor autor = repositorio.getAutorPorEmail(email);
			result.use(Results.json()).withoutRoot().from(autor).serialize();
		}
	}
	
}
