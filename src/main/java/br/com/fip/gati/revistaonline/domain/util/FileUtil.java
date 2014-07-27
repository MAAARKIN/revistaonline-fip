package br.com.fip.gati.revistaonline.domain.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.tomcat.util.http.fileupload.IOUtils;

import br.com.caelum.vraptor.interceptor.multipart.UploadedFile;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class FileUtil {
	
	public File criarArquivo(UploadedFile arquivo, String caminho) throws IOException {
		File folder = new File(caminho);
		folder.mkdirs();
		File destino = new File(caminho, arquivo.getFileName());
		IOUtils.copyLarge(arquivo.getFile(), new FileOutputStream(destino));
		return destino;
	}
	
}
