package com.gaemistorming.healthu.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gaemistorming.healthu.model.DayWorkOut;
import com.gaemistorming.healthu.model.Users;

@Repository
public class DayWODao {

	@Autowired
	private SessionFactory sessionFactory;

	public DayWorkOut getDayWOById(Long id) {
		Session session = sessionFactory.getCurrentSession();
		DayWorkOut dayWO = (DayWorkOut) session.get(DayWorkOut.class, id);
		
		return dayWO;
	}

	public List<DayWorkOut> getDayWO() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from dayWorkout";

		Query<DayWorkOut> query = session.createQuery(hql, DayWorkOut.class);
		List<DayWorkOut> dayWO = query.getResultList();

		return dayWO;
	}

	public Long addDayWO(DayWorkOut dayWO) {
		Session session = sessionFactory.getCurrentSession();
		Long id = (Long) session.save(dayWO);
		session.flush();
		return id;
	}

	public void deleteDayWO(DayWorkOut dayWO) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(dayWO);
		session.flush();
	}

	public void updateDayWO(DayWorkOut dayWO) {
		Session session = sessionFactory.getCurrentSession();
		session.update(dayWO);
		session.flush();
	}

	
	
	

	// Crud method
	public void insert(DayWorkOut dayWO) {
		
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(dayWO);
        session.flush(); // 얜 있어도 그만 없어도 그만

	}

	// crUd method
	public void update(DayWorkOut dayWO) {
		
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(dayWO);
        session.flush();

	}

	// cruD method
	public void delete(DayWorkOut dayWO) {
		
		Session session = sessionFactory.getCurrentSession();
        session.delete(dayWO);
        session.flush();

	}
}
