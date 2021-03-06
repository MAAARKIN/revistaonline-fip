package br.com.fip.gati.revistaonline.resources.web.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

import org.apache.tomcat.util.http.fileupload.IOUtils;

import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.environment.Environment;
import br.com.caelum.vraptor.interceptor.multipart.UploadedFile;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.fip.gati.revistaonline.domain.model.Artigo;
import br.com.fip.gati.revistaonline.domain.model.Autor;
import br.com.fip.gati.revistaonline.domain.model.Revista;
import br.com.fip.gati.revistaonline.domain.model.business.ArtigoBusiness;
import br.com.fip.gati.revistaonline.domain.model.enums.ArtigoStatusEnum;
import br.com.fip.gati.revistaonline.domain.repositorio.ArtigoRepositorio;
import br.com.fip.gati.revistaonline.domain.repositorio.AutorRepositorio;
import br.com.fip.gati.revistaonline.domain.repositorio.RevistaRepositorio;
import br.com.fip.gati.revistaonline.resources.web.UsuarioLogado;


@Resource
public class ArtigoController {
	
	private ArtigoRepositorio artigoRepositorio;
	private final Result result;
	private final Validator valitador;
	private final Environment enviroment;
	private final UsuarioLogado usuarioWeb;
	private final RevistaRepositorio revistaRepositorio;
	private final AutorRepositorio autorRepositorio;
	private ArtigoBusiness artigoBusiness;

	public ArtigoController(ArtigoRepositorio artigoRep, Result result, Validator validator,
			Environment env, UsuarioLogado usuarioWeb, AutorRepositorio autorRepositorio,
			RevistaRepositorio revistaRepositorio, ArtigoBusiness artigoBusiness) {
		this.artigoRepositorio = artigoRep;
		this.result = result;
		this.valitador = validator;
		this.enviroment = env;
		this.usuarioWeb = usuarioWeb;
		this.autorRepositorio = autorRepositorio;
		this.revistaRepositorio = revistaRepositorio;
		this.artigoBusiness = artigoBusiness;
	}
	
	@Get("/office/submissao")
	public void formulario() {
		result.include("revistaList", revistaRepositorio.listAll());
	}
	
	@Post
	public void salvar(Artigo artigo, UploadedFile file) {
		this.valitador.validate(artigo);
		this.valitador.onErrorRedirectTo(this).formulario();
		File arquivo = null;
		try {
			Revista revista = revistaRepositorio.load(artigo.getRevista().getId());
			Autor autor = autorRepositorio.getAutorPorEmail(usuarioWeb.getUsuarioInfo().getEmail());
			arquivo = artigoBusiness.salvarArtigoComArquivo(file, enviroment.get("upload.target.dir"), revista, autor, artigo);
			this.artigoRepositorio.save(artigo);
			result.redirectTo(this).formulario();
		} catch (Exception e) {
			e.printStackTrace();
			if(arquivo.exists()) {
				arquivo.delete();
			}
			result.include("errors", Arrays.asList(new ValidationMessage("", "Problema com o envio do arquivo")))
			.redirectTo(this).formulario();;
		}
	}
	
	@Get("/artigo/{artigo.id}")
	public Artigo visualizar(Artigo artigo) {
		Artigo art = this.artigoRepositorio.load(artigo.getId());
		return art;
	}
	
	@Put("/artigo/{artigo.id}")
	public void atualizar(Artigo artigo) {
		this.valitador.validate(artigo);
		this.valitador.onErrorRedirectTo(this).formulario();
		this.artigoRepositorio.update(artigo);
		result.include("success", "Cadastrou").redirectTo(IndexController.class).index();
	}
	
	@Get("/artigo/editar/{artigo.id}")
	public Artigo editar(Artigo artigo) {
		Artigo arti = this.artigoRepositorio.load(artigo.getId());
		return arti;
	}
	
	@Delete("/artigo/{artigo.id}")
	public void excluir(Artigo artigo) {
		Artigo arti = this.artigoRepositorio.load(artigo.getId());
		this.artigoRepositorio.delete(arti);
		result.redirectTo(this).listar();
	}
	
	@Get("/artigos")
	public List<Artigo> listar() {
		return artigoRepositorio.listAll();
	}
}
