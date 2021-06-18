package com.gaemistorming.healthu.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gaemistorming.healthu.dao.UserDao;
import com.gaemistorming.healthu.model.Authority;
import com.gaemistorming.healthu.model.DayWorkOut;
import com.gaemistorming.healthu.model.Users;

@Service
@Transactional
public class UserService {

	private EntityManager entityManager;
	
	@Autowired
    private UserDao userRepository;

    public List<Users> getAllUsers() {
        return userRepository.getUsers();
    }
	
    public Users getUserById(String id) {
        return userRepository.getUserById(id);
    	//return this.entityManager.find(Users.class, id);
    }
    
    public Users getUserById(Long id) {
        return userRepository.getUserById(id);
    	//return this.entityManager.find(Users.class, id);
    }
    
    public Users createUser(String name) {
        Users user = new Users();
        user.setUsername(name);

        Long id =  userRepository.addUser(user);
        user.setId(id);
        
        return user;
    }

    public void updateUser(Users user) {    	
        userRepository.updateUser(user);
    }
    
    public void deleteUser(Users user) {
        userRepository.deleteUser(user);
    }
    
//    @Override
//    public boolean isChildCategory(Category category, Category parent) {
//    	if(category.getParent() == null)
//    		return false;
//    	
//        return category.getParent().equals(parent);
//    }
    
//    public void addDayWO(DayWorkOut dayWO, Users user) {
//        dayWO.setUser(user);
//        userRepository.updateUser(dayWO);
//    }
//    
//    public void removeDayWO(DayWorkOut dayWO, Users user) {
//        dayWO.setUser(null);
//        userRepository.updateUser(dayWO);
//    }
    
    public void addAuthority(Authority authority, Users user) {
        authority.setUser(user);
        userRepository.updateUser(authority);
    }
    
    public void removeAuthority(Authority authority, Users user) {
        authority.setUser(null);
        userRepository.updateUser(authority);
    }
    
    public void insert(Users user) {
    	userRepository.insert(user);
    }
    
    public void update(Users user) {
    	userRepository.update(user);
    }
	
}
