package com.gaemistorming.healthu.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gaemistorming.healthu.dao.DayWODao;
import com.gaemistorming.healthu.model.DayWorkOut;
import com.gaemistorming.healthu.model.Users;

@Service
@Transactional
public class DayWOService {

	@Autowired
    private DayWODao dayWORepository;

    public List<DayWorkOut> getAllDayWO() {
        return dayWORepository.getDayWO();
    }
    
    public DayWorkOut getDayWOById(Long id) {
        return dayWORepository.getDayWOById(id);
    }
    
    public DayWorkOut createDayWO(String day) {
        DayWorkOut dayWO = new DayWorkOut();
        dayWO.setDay(day);

        Long id =  dayWORepository.addDayWO(dayWO);
        dayWO.setId(id);
        
        return dayWO;
    }

    public void updateDayWO(DayWorkOut dayWO) {    	
        dayWORepository.updateDayWO(dayWO);
    }
    
    public void deleteDayWO(DayWorkOut dayWO) {
        dayWORepository.deleteDayWO(dayWO);
    }
    
    public void insert(DayWorkOut dayWO) {
    	dayWORepository.insert(dayWO);
    }
    
    public void update(DayWorkOut dayWO) {
    	dayWORepository.update(dayWO);
    }
	

//    public void addUser(DayWorkOut dayWO, Users user) {
//        dayWO.setUser(user);
//        userRepository.updateDayWO(dayWO);
//    }
//    
//    @Override
//    public void removeChildCategory(Category category, Category parent) {
//        category.setParent(null);
//        userRepository.updateCategory(category);
//    }
    
}
