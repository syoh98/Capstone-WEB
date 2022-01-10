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

import com.gaemistorming.healthu.controller.DayWOController.DayWODto;
import com.gaemistorming.healthu.exception.NotFoundException;
import com.gaemistorming.healthu.model.Authority;
import com.gaemistorming.healthu.service.AuthorityService;

@RestController
@RequestMapping(path="/authorities")
public class AuthorityController {

    @Autowired
    private AuthorityService authorityService;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<?> retrieveAllAuthority() {
        // Getting all categories in application...
        final List<Authority> authority = authorityService.getAllAuthority();

        if (authority.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}

        return ResponseEntity.ok(authority);		
    }

    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<Authority> retrieveAuthority(@PathVariable Long id) {
    	
    	Authority authority = authorityService.getAuthorityById(id);
    	if(authority == null) {
    		throw new NotFoundException(id);
    	}
    	return new ResponseEntity<Authority>(authority, HttpStatus.OK);
       
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<?> createAuthority(@RequestBody @Valid AuthorityDto request) {
    	
        // Creating a new category in the application...
        final Authority authority = authorityService.createAuthority(request.getAuthority());

		//return new ResponseEntity<Category>(category, HttpStatus.CREATED);
        return ResponseEntity.status(HttpStatus.CREATED).body(authority);
    }

    @RequestMapping(path = "/{id}", method = RequestMethod.PUT)
    public ResponseEntity<?> updateAuthority(@PathVariable Long id, @RequestBody @Valid AuthorityDto request) {
    	
    	Authority currentAuthority = authorityService.getAuthorityById(id);
    	
    	if(currentAuthority == null) {
    		throw new NotFoundException(id);
    	}
    	
    	currentAuthority.setAuthority(request.getAuthority());
    	
    	authorityService.updateAuthority(currentAuthority);
    	
    	return new ResponseEntity<Authority>(currentAuthority, HttpStatus.OK);
       
    }

    @RequestMapping(path = "/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<?> deleteAuthority(@PathVariable Long id) {
    	
        // Getting the requiring category; or throwing exception if not found
        final Authority authority = authorityService.getAuthorityById(id);
        
        if(authority == null)
			throw new NotFoundException(id);

        // Deleting category from the application...
        authorityService.deleteAuthority(authority);

        return ResponseEntity.noContent().build();

    }

    static class AuthorityDto {
        @NotNull(message = "name is required")
        @Size(message = "name must be equal to or lower than 100", min = 1, max = 100)
        private String authority;

        public String getAuthority() {
            return authority;
        }

        public void setAuthority(String authority) {
            this.authority = authority;
        }
    }
	
}
