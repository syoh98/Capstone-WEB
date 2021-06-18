package com.gaemistorming.healthu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gaemistorming.healthu.exception.NotFoundException;
import com.gaemistorming.healthu.model.Authority;
import com.gaemistorming.healthu.model.Users;
import com.gaemistorming.healthu.service.AuthorityService;
import com.gaemistorming.healthu.service.UserService;

@RestController
@RequestMapping(path = "/users/{user_id}/authority")
public class UserAuthorityController {

	@Autowired
    private UserService userService;
	
	@Autowired
    private AuthorityService authorityService; 

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<?> retrieveAllAuthority(@PathVariable String user_id) {
    	
        // Getting the requiring category; or throwing exception if not found
        final Users user = userService.getUserById(user_id);
        if( user == null)
        	throw  new NotFoundException(user_id);
        
        // Getting all categories in application...
        final Authority authority = user.getAuthority();

        return ResponseEntity.ok(authority);
    }

    @RequestMapping(path = "/{childid}", method = RequestMethod.POST)
    public ResponseEntity<?> addAuthority(@PathVariable String user_id, @PathVariable Long authority_id) {
    	
    	final Users user = userService.getUserById(user_id);
        if( user == null)
        	throw  new NotFoundException(user_id);
        
        final Authority authority = authorityService.getAuthorityById(authority_id);
        if( authority == null)
        	throw  new NotFoundException(authority_id);
        
        userService.addAuthority(authority, user);
        
        return ResponseEntity.ok().build();
       
    }

    @RequestMapping(path = "/{childid}", method = RequestMethod.DELETE)
    public ResponseEntity<?> removeAuthority(@PathVariable String user_id, @PathVariable Long authority_id) {
    	
        // Getting the requiring category; or throwing exception if not found
        final Users user = userService.getUserById(user_id);
        if( user == null)
        	throw  new NotFoundException(user_id);
        
        // Getting the requiring category; or throwing exception if not found
        final Authority authority = authorityService.getAuthorityById(authority_id);
        if( authority == null)
        	throw  new NotFoundException(authority_id);

//        // Validating if association exists...
//        if (!userService.isChildCategory(dayWO, user)) {
//            throw new IllegalArgumentException("category " + user.getId() + " does not contain subcategory " + dayWO.getId());
//        }

        // Dis-associating parent with subcategory...
        userService.removeAuthority(authority, user);

        return ResponseEntity.noContent().build();
    }
	
}
