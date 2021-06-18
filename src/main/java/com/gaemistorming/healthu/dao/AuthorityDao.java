package com.gaemistorming.healthu.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gaemistorming.healthu.model.Authority;
import com.gaemistorming.healthu.model.Users;

@Repository
public class AuthorityDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Authority getAuthorityById(Long id) {
		Session session = sessionFactory.getCurrentSession();
		Authority authority = (Authority) session.get(Authority.class, id);
		
		return authority;
	}

	public List<Authority> getAuthority() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Authority";

		Query<Authority> query = session.createQuery(hql, Authority.class);
		List<Authority> authority = query.getResultList();

		return authority;
	}

	public Long addAuthority(Authority authority) {
		Session session = sessionFactory.getCurrentSession();
		Long id = (Long) session.save(authority);
		session.flush();
		return id;
	}

	public void deleteAuthority(Authority authority) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(authority);
		session.flush();
	}

	public void updateAuthority(Authority authority) {
		Session session = sessionFactory.getCurrentSession();
		session.update(authority);
		session.flush();
	}

	// Crud method
	public void insert(Authority authority) {
		
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(authority);
        session.flush(); // 얜 있어도 그만 없어도 그만

	}

	// crUd method
	public void update(Authority authority) {
		
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(authority);
        session.flush();

	}

	// cruD method
	public void delete(Authority authority) {
		
		Session session = sessionFactory.getCurrentSession();
        session.delete(authority);
        session.flush();

	}
	
}
