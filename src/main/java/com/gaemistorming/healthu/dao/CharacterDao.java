package com.gaemistorming.healthu.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gaemistorming.healthu.model.Characters;

@Repository
public class CharacterDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Characters getCharacterById(String id) {
		Session session = sessionFactory.getCurrentSession();
		Characters character = (Characters) session.get(Characters.class, id);
	
		return character;
	}
	
	public Characters getCharacterById(Long id) {
		Session session = sessionFactory.getCurrentSession();
		Characters character = (Characters) session.get(Characters.class, id);
	
		return character;
	}

	public List<Characters> getCharacters() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Characters";

		Query<Characters> query = session.createQuery(hql, Characters.class);
		List<Characters> characterList = query.getResultList();

		return characterList;
	}

	public String addCharacter(Characters character) {
		Session session = sessionFactory.getCurrentSession();
		String id = (String) session.save(character);
		session.flush();
		return id;
	}

	public void deleteCharacter(Characters character) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(character);
		session.flush();
	}

	public void updateCharacter(Characters character) {
		Session session = sessionFactory.getCurrentSession();
		session.update(character);
		session.flush();
	}
	
}
