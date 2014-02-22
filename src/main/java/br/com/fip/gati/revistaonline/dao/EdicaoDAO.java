package br.com.fip.gati.revistaonline.dao;

import org.hibernate.Session;

import br.com.caelum.vraptor.ioc.Component;
import br.com.fip.gati.revistaonline.domain.model.Edicao;
import br.com.fip.gati.revistaonline.repositorio.EdicaoRepositorio;
import br.com.fip.gati.revistaonline.repositorio.Repositorio;

@Component
public class EdicaoDAO extends GenericDAO<Edicao> implements EdicaoRepositorio {

	public EdicaoDAO(Session session) {
		super(Edicao.class, session);
	}

}
