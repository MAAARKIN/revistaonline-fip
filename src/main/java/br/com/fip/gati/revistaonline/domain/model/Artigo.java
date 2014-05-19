package br.com.fip.gati.revistaonline.domain.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import br.com.fip.gati.revistaonline.domain.exception.RevistaException;
import br.com.fip.gati.revistaonline.domain.model.enums.ArtigoStatusEnum;
import br.com.fip.gati.revistaonline.domain.model.enums.AvaliacaoStatusEnum;

@javax.persistence.Entity
@Table(name = "artigo")
public class Artigo extends Entity {

	@NotNull(message="{artigo.titulo.nulo}")
	@Size(min=8, max=64, message="{artigo.titulo.tamanho}")
	@NotEmpty(message="{artigo.titulo.branco}")
	private String titulo;
	
	@NotNull(message="{artigo.resumo.nulo}")
	@Size(min=8, message="{artigo.titulo.tamanho}")
	@NotEmpty(message="{artigo.resumo.branco}")
	private String resumo;
	
	@NotNull
	private String keyWord;
	@ManyToMany
	@JoinTable(name = "artigo_autor", joinColumns = @JoinColumn(name = "artigo_id"), inverseJoinColumns = @JoinColumn(name = "autor_id"))
	private List<Autor> autores;
	@NotNull
	private String secao;
	@NotNull
	private String idioma;
	@NotNull
	private String areaSubAreaDoConhecimento;
	@NotNull
	private String geoEspacial;
	@NotNull
	private String cronologicaOuHistorica;
	@NotNull
	private String caracteristicasDaAmostragemDaPesquisa;

	@NotNull
	private String condicoesParaSubmissao;
	@NotNull
	private String agencias;

	@Enumerated(EnumType.STRING)
	private ArtigoStatusEnum status;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Calendar dataSubmissao;
	
	@OneToMany(mappedBy="artigo", fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	private List<AvaliacaoArtigo> avaliacoes;
	
//	@ManyToOne(fetch=FetchType.LAZY)
//	@JoinColumn(name="revista_id")
//	private Revista revista;
	

	public String getAreaSubAreaDoConhecimento() {
		return areaSubAreaDoConhecimento;
	}

	public void setAreaSubAreaDoConhecimento(String areaSubAreaDoConhecimento) {
		this.areaSubAreaDoConhecimento = areaSubAreaDoConhecimento;
	}

	public String getGeoEspacial() {
		return geoEspacial;
	}

	public void setGeoEspacial(String geoEspacial) {
		this.geoEspacial = geoEspacial;
	}

	public String getCronologicaOuHistorica() {
		return cronologicaOuHistorica;
	}

	public void setCronologicaOuHistorica(String cronologicaOuHistorica) {
		this.cronologicaOuHistorica = cronologicaOuHistorica;
	}

	public String getCaracteristicasDaAmostragemDaPesquisa() {
		return caracteristicasDaAmostragemDaPesquisa;
	}

	public void setCaracteristicasDaAmostragemDaPesquisa(
			String caracteristicasDaAmostragemDaPesquisa) {
		this.caracteristicasDaAmostragemDaPesquisa = caracteristicasDaAmostragemDaPesquisa;
	}

	public String getAgencias() {
		return agencias;
	}

	public void setAgencias(String agencias) {
		this.agencias = agencias;
	}

	public void setCondicoesParaSubmissao(String condicoesParaSubmissao) {
		this.condicoesParaSubmissao = condicoesParaSubmissao;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getResumo() {
		return resumo;
	}

	public void setResumo(String resumo) {
		this.resumo = resumo;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public String getSecao() {
		return secao;
	}

	public void setSecao(String secao) {
		this.secao = secao;
	}

	public String getIdioma() {
		return idioma;
	}

	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}

	public String getCondicoesParaSubmissao() {
		return condicoesParaSubmissao;
	}

	public List<Autor> getAutores() {
		return autores;
	}

	public void setAutores(List<Autor> autores) {
		this.autores = autores;
	}
	
	public List<AvaliacaoArtigo> getAvaliacoes() {
		return avaliacoes;
	}
	
	public void setAvaliacoes(List<AvaliacaoArtigo> avaliacoes) {
		this.avaliacoes = avaliacoes;
	}
	
	public ArtigoStatusEnum getStatus() {
		return status;
	}
	
	public void setStatus(ArtigoStatusEnum status) {
		this.status = status;
	}
	
	public Calendar getDataSubmissao() {
		return dataSubmissao;
	}
	
	public void setDataSubmissao(Calendar dataSubmissao) {
		this.dataSubmissao = dataSubmissao;
	}
	

//	public Revista getRevista() {
//		return revista;
//	}
//	
//	public void setRevista(Revista revista) {
//		this.revista = revista;
//	}


	public void associarAvaliador(Avaliador avaliador) throws RevistaException {
		if(!isPendenteDeAvaliacao()) {
			throw new RevistaException("O artigo não está pendente de avaliação");
		}
		
		if(isAvaliadoPor(avaliador)) {
			throw new RevistaException("Avaliador já selecionado para este artigo");
		}
		
		if(avaliacoes == null) {
			avaliacoes = new ArrayList<AvaliacaoArtigo>();
		}
		
		AvaliacaoArtigo av = new AvaliacaoArtigo();
		av.setArtigo(this);
		av.setAvaliador(avaliador);
		av.setStatus(AvaliacaoStatusEnum.P);
		avaliacoes.add(av);
	}
	
	public boolean isAvaliadoPor(Avaliador avaliador) {
		if(avaliacoes == null) return false;
		for(AvaliacaoArtigo aa : avaliacoes) {
			if(aa.getAvaliador().equals(avaliador)) {
				return true;
			}
		}
		return false;
	}
		
	public boolean isPendenteDeAvaliacao() {
		return status == ArtigoStatusEnum.PENDENTE;
	}
	
	public boolean isEmAvaliacao() {
		return status == ArtigoStatusEnum.REVISAO_AVALIACAO;
	}
	
}
