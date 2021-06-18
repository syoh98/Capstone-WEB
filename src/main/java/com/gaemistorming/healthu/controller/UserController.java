package com.gaemistorming.healthu.controller;

import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gaemistorming.healthu.exception.NotFoundException;
import com.gaemistorming.healthu.model.Users;
import com.gaemistorming.healthu.service.UserService;

@RestController
@RequestMapping(path="/users")
public class UserController {

	@Autowired
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<?> retrieveAllUsers() {
        // Getting all categories in application...
        final List<Users> users = userService.getAllUsers();

        if (users.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}

        return ResponseEntity.ok(users);		
    }

    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<Users> retrieveUser(@PathVariable String id) {
    	
    	Users user = userService.getUserById(id);
    	if(user == null) {
    		throw new NotFoundException(id);
    	}
    	return new ResponseEntity<Users>(user, HttpStatus.OK);
       
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<?> createUser(@RequestBody @Valid UserDto request) {
    	
        // Creating a new category in the application...
        final Users user = userService.createUser(request.getName());

		//return new ResponseEntity<Category>(category, HttpStatus.CREATED);
        return ResponseEntity.status(HttpStatus.CREATED).body(user);
    }

    @RequestMapping(path = "/{id}", method = RequestMethod.PUT)
    public ResponseEntity<?> updateUser(@PathVariable String id, @RequestBody @Valid UserDto request) {
    	
    	Users currentUser = userService.getUserById(id);
    	
    	if(currentUser == null) {
    		throw new NotFoundException(id);
    	}
    	
    	currentUser.setUsername(request.getName());
    	
    	userService.updateUser(currentUser);
    	
    	return new ResponseEntity<Users>(currentUser, HttpStatus.OK);
       
    }

    @RequestMapping(path = "/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<?> deleteUser(@PathVariable String id) {
    	
        // Getting the requiring category; or throwing exception if not found
        final Users user = userService.getUserById(id);
        
        if(user == null)
			throw new NotFoundException(id);

        // Deleting category from the application...
        userService.deleteUser(user);

        return ResponseEntity.noContent().build();

    }
    

    static class UserDto {
        @NotNull(message = "name is required")
        @Size(message = "name must be equal to or lower than 100", min = 1, max = 100)
        private String name;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
    }
    
}
