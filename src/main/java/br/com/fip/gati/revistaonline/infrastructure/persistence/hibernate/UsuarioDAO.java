package br.com.fip.gati.revistaonline.infrastructure.persistence.hibernate;

import java.util.HashMap;
import java.util.Map;
import java.util.Calendar;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.com.fip.gati.revistaonline.domain.model.Usuario;
import br.com.fip.gati.revistaonline.domain.repositorio.UsuarioRepositorio;

@Component
public class UsuarioDAO extends GenericDAO<Usuario> implements UsuarioRepositorio {
	public UsuarioDAO(Session session) {
		super(Usuario.class, session);
	}
	
	public Usuario getUsuario(String login, String senha) {
		if (login == null || senha == null) {
			return null;
		}
		return (Usuario) getCurrentSession().createCriteria(Usuario.class)
				.add(Restrictions.eq("login", login))
				.add(Restrictions.eq("senha", senha))
				.uniqueResult();
	}

	public Usuario getUsuario(String login) {
		if (login == null) {
			return null;
		}
		return (Usuario) getCurrentSession().createCriteria(Usuario.class)
				.add(Restrictions.eq("login", login))
				.uniqueResult();
	}
	
	public Usuario getUsuarioPorToken(String token) {
		
		return (Usuario) getCurrentSession().createCriteria(Usuario.class)
				.add(Restrictions.eq("token", token))
				.uniqueResult();
		
	}

	public long getTotalUsuariosAdministradores() {
		return ((Number) getCurrentSession().createCriteria(Usuario.class)
				.add(Restrictions.eq("admin", Boolean.TRUE))
				.setProjection(Projections.rowCount())
				.uniqueResult()).longValue();
	}

	public Usuario getUsuarioPorEmail(String email) {
		if (email == null) {
			return null;
		}
		StringBuilder hql = new StringBuilder();
		hql.append("select user from Usuario user, Autor autor ");
		hql.append("where user.autor = autor.id ");
		hql.append("and autor.email = :email");
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("email", email);
		return super.findOneResult(hql.toString(), parameters);
//		return (Usuario) getCurrentSession().createCriteria(Usuario.class)
//				.add(Restrictions.eq("email", email))
//				.uniqueResult();
	}
	
	public boolean validarToken(Usuario usuario, String token) {
		Calendar time = usuario.getDataHora();
		if((time.getTimeInMillis() - Calendar.getInstance().getTimeInMillis()) > -900000 ){
			return true; 
		}
		return false; 
	}
}
