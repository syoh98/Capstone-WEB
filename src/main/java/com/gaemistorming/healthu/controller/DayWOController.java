package com.gaemistorming.healthu.controller;

import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gaemistorming.healthu.exception.NotFoundException;
import com.gaemistorming.healthu.model.DayWorkOut;
import com.gaemistorming.healthu.service.DayWOService;

@RestController
@RequestMapping(path="/dayWorkout")
public class DayWOController {

	@Autowired
    private DayWOService dayWOService;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<?> retrieveAllDayWO() {
        // Getting all categories in application...
        final List<DayWorkOut> dayWO = dayWOService.getAllDayWO();

        if (dayWO.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}

        return ResponseEntity.ok(dayWO);		
    }

    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<DayWorkOut> retrieveDayWO(@PathVariable Long id) {
    	
    	DayWorkOut dayWO = dayWOService.getDayWOById(id);
    	if(dayWO == null) {
    		throw new NotFoundException(id);
    	}
    	return new ResponseEntity<DayWorkOut>(dayWO, HttpStatus.OK);
       
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<?> createDayWO(@RequestBody @Valid DayWODto request) {
    	
        // Creating a new category in the application...
        final DayWorkOut dayWO = dayWOService.createDayWO(request.getDay());

		//return new ResponseEntity<Category>(category, HttpStatus.CREATED);
        return ResponseEntity.status(HttpStatus.CREATED).body(dayWO);
    }

    @RequestMapping(path = "/{id}", method = RequestMethod.PUT)
    public ResponseEntity<?> updateDayWO(@PathVariable Long id, @RequestBody @Valid DayWODto request) {
    	
    	DayWorkOut currentDayWO = dayWOService.getDayWOById(id);
    	
    	if(currentDayWO == null) {
    		throw new NotFoundException(id);
    	}
    	
    	currentDayWO.setDay(request.getDay());
    	
    	dayWOService.updateDayWO(currentDayWO);
    	
    	return new ResponseEntity<DayWorkOut>(currentDayWO, HttpStatus.OK);
       
    }

    @RequestMapping(path = "/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<?> deleteDayWO(@PathVariable Long id) {
    	
        // Getting the requiring category; or throwing exception if not found
        final DayWorkOut dayWO = dayWOService.getDayWOById(id);
        
        if(dayWO == null)
			throw new NotFoundException(id);

        // Deleting category from the application...
        dayWOService.deleteDayWO(dayWO);

        return ResponseEntity.noContent().build();

    }

    static class DayWODto {
        @NotNull(message = "name is required")
        @Size(message = "name must be equal to or lower than 100", min = 1, max = 100)
        private String day;

        public String getDay() {
            return day;
        }

        public void setDay(String day) {
            this.day = day;
        }
    }
	
}
