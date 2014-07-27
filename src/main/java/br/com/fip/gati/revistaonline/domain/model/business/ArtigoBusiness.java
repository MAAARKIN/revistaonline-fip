package br.com.fip.gati.revistaonline.domain.model.business;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;

import br.com.caelum.vraptor.interceptor.multipart.UploadedFile;
import br.com.caelum.vraptor.ioc.Component;
import br.com.fip.gati.revistaonline.domain.model.Artigo;
import br.com.fip.gati.revistaonline.domain.model.Autor;
import br.com.fip.gati.revistaonline.domain.model.Revista;
import br.com.fip.gati.revistaonline.domain.model.enums.ArtigoStatusEnum;
import br.com.fip.gati.revistaonline.domain.util.FileUtil;

@Component
public class ArtigoBusiness {

	private FileUtil fileUtil;
	
	public ArtigoBusiness(FileUtil fileUtil) {
		this.fileUtil = fileUtil;
	}
	
	public File salvarArtigoComArquivo(UploadedFile file, String caminho, Revista revista, Autor autor, Artigo artigo) throws IOException {
		artigo.setRevista(revista);
		artigo.getAutores().add(autor);
		artigo.setDataSubmissao(Calendar.getInstance());
		artigo.setStatus(ArtigoStatusEnum.PENDENTE);
		File arquivo = fileUtil.criarArquivo(file, caminho);
		artigo.setCaminhoArquivo(arquivo.getAbsolutePath());
		return arquivo;
	}
}
