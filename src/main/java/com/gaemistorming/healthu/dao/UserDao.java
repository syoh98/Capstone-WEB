package com.gaemistorming.healthu.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gaemistorming.healthu.model.Authority;
import com.gaemistorming.healthu.model.DayWorkOut;
import com.gaemistorming.healthu.model.Users;

@Repository
@Transactional
public class UserDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Users getUserById(String user_id) {
		Session session = sessionFactory.getCurrentSession();
		Users user = (Users) session.get(Users.class, user_id);
		
		return user;
	}
	
	public Users getUserById(Long user_id) {
		Session session = sessionFactory.getCurrentSession();
		Users user = (Users) session.get(Users.class, user_id);
		
		return user;
	}

	// cRud method
	public List<Users> getUsers() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Users";

		Query<Users> query = session.createQuery(hql, Users.class);
		List<Users> users = query.getResultList();

		return users;
	}


	public Long addUser(Users user) {
		Session session = sessionFactory.getCurrentSession();
		Long id = (Long) session.save(user);
		session.flush();
		return id;
	}

	public void deleteUser(Users user) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(user);
		session.flush();
	}

	public void updateUser(Users user) {
		Session session = sessionFactory.getCurrentSession();
		session.update(user);
		session.flush();
	}
	
	public void updateUser(DayWorkOut dayWO) {
		Session session = sessionFactory.getCurrentSession();
		session.update(dayWO);
		session.flush();
	}
	
	public void updateUser(Authority authority) {
		Session session = sessionFactory.getCurrentSession();
		session.update(authority);
		session.flush();
	}
	
	
	

	// Crud method
	public void insert(Users user) {
		
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(user);
        session.flush(); // 얜 있어도 그만 없어도 그만

	}

	// crUd method
	public void update(Users user) {
		
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(user);
        //session.update(user);
        session.flush();

	}

	// cruD method
	public void delete(Users user) {
		
		Session session = sessionFactory.getCurrentSession();
        session.delete(user);
        session.flush();

	}
	
}
