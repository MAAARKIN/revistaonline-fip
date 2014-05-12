package br.com.fip.gati.revistaonline.domain.model.enums;

public enum ArtigoStatusEnum {

	PENDENTE("PENDENTE"),
	REVISAO_AVALIACAO("EM REVISAO/AVALIACAO"),
	APROVADO("APROVADO"),
	REPROVADO("REPROVADO");
	
	private String descricao;
	
	private ArtigoStatusEnum(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return descricao;
	}
}
