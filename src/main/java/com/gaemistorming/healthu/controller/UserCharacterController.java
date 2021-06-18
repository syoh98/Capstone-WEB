package com.gaemistorming.healthu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gaemistorming.healthu.exception.NotFoundException;
import com.gaemistorming.healthu.model.Characters;
import com.gaemistorming.healthu.model.Users;
import com.gaemistorming.healthu.service.CharacterService;
import com.gaemistorming.healthu.service.UserService;

@RestController
@RequestMapping(path = "/users/{user_id}/characters")
public class UserCharacterController {

	@Autowired
    private UserService userService;
	
	@Autowired
	private CharacterService characterService;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<?> retrieveAllCharacters(@PathVariable String user_id) {
    	
        // Getting the requiring category; or throwing exception if not found
        final Characters character = characterService.getCharacterById(user_id);
        if( character == null)
        	throw  new NotFoundException(user_id);

		return new ResponseEntity<Characters>(character, HttpStatus.OK);
    }

    @RequestMapping(path = "/{char_id}", method = RequestMethod.POST)
    public ResponseEntity<?> addCharacter(@PathVariable String user_id, @PathVariable String char_id) {
    	
    	final Users user = userService.getUserById(user_id);
        if( user == null)
        	throw  new NotFoundException(user_id);
        
        final Characters character = characterService.getCharacterById(char_id);
        if( character == null)
        	throw  new NotFoundException(char_id);
        
        characterService.addToUser(character, user);
        
		return ResponseEntity.status(HttpStatus.CREATED).body(character);
       
    }

    @RequestMapping(path = "/{char_id}", method = RequestMethod.DELETE)
    public ResponseEntity<?> removeCharacter(@PathVariable String user_id, @PathVariable String char_id) {
    	
        // Getting the requiring category; or throwing exception if not found
        final Users user = userService.getUserById(user_id);
        if( user == null)
        	throw  new NotFoundException(user_id);
        
        // Getting the requiring category; or throwing exception if not found
        final Characters character = characterService.getCharacterById(char_id);
        if( character == null)
        	throw  new NotFoundException(char_id);

        // Dis-associating parent with subcategory...
        characterService.removeToUser(character, user);

		return new ResponseEntity<Characters>(HttpStatus.NO_CONTENT);
    }
	
}
