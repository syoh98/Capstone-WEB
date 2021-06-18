//package com.gaemistorming.healthu.controller;
//
//import java.util.Set;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.gaemistorming.healthu.exception.NotFoundException;
//import com.gaemistorming.healthu.model.DayWorkOut;
//import com.gaemistorming.healthu.model.Users;
//import com.gaemistorming.healthu.service.DayWOService;
//import com.gaemistorming.healthu.service.UserService;
//
//@RestController
//@RequestMapping(path = "/users/{user_id}/dayWorkout")
//public class UserDayWOController {
//
//	@Autowired
//    private UserService userService;
//	
//	@Autowired
//    private DayWOService dayWOService; 
//
//    @RequestMapping(method = RequestMethod.GET)
//    public ResponseEntity<?> retrieveAllDayWO(@PathVariable String user_id) {
//    	
//        // Getting the requiring category; or throwing exception if not found
//        final Users user = userService.getUserById(user_id);
//        if( user == null)
//        	throw  new NotFoundException(user_id);
//        
//        // Getting all categories in application...
//        final DayWorkOut dayWO = user.getDayWO();
//
//        return ResponseEntity.ok(dayWO);
//    }
//
//    @RequestMapping(path = "/{childid}", method = RequestMethod.POST)
//    public ResponseEntity<?> addDayWO(@PathVariable long user_id, @PathVariable Long dayWO_id) {
//    	
//    	final Users user = userService.getUserById(user_id);
//        if( user == null)
//        	throw  new NotFoundException(user_id);
//        
//        final DayWorkOut dayWO = dayWOService.getDayWOById(dayWO_id);
//        if( dayWO == null)
//        	throw  new NotFoundException(dayWO_id);
//        
//        userService.addDayWO(dayWO, user);
//        
//        return ResponseEntity.ok().build();
//       
//    }
//
//    @RequestMapping(path = "/{childid}", method = RequestMethod.DELETE)
//    public ResponseEntity<?> removeDayWO(@PathVariable String user_id, @PathVariable Long dayWO_id) {
//    	
//        // Getting the requiring category; or throwing exception if not found
//        final Users user = userService.getUserById(user_id);
//        if( user == null)
//        	throw  new NotFoundException(user_id);
//        
//        // Getting the requiring category; or throwing exception if not found
//        final DayWorkOut dayWO = dayWOService.getDayWOById(dayWO_id);
//        if( dayWO == null)
//        	throw  new NotFoundException(dayWO_id);
//
////        // Validating if association exists...
////        if (!userService.isChildCategory(dayWO, user)) {
////            throw new IllegalArgumentException("category " + user.getId() + " does not contain subcategory " + dayWO.getId());
////        }
//
//        // Dis-associating parent with subcategory...
//        userService.removeDayWO(dayWO, user);
//
//        return ResponseEntity.noContent().build();
//    }
//	
//}
