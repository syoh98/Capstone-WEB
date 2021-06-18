package com.gaemistorming.healthu.controller;

import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.Min;
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
import com.gaemistorming.healthu.model.Characters;
import com.gaemistorming.healthu.service.CharacterService;

import lombok.Getter;
import lombok.Setter;

@RestController
@RequestMapping(path = "/characters")
public class CharacterController {

	@Autowired
	private CharacterService characterService;

	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<?> retrieveAllCharacters() {
		
		// Getting all products in application...
		final List<Characters> characters = characterService.getAllCharacters();

		if (characters.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}

		return new ResponseEntity<List<Characters>>(characters, HttpStatus.OK);
	}

	@RequestMapping(path = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<Characters> retrieveCharacter(@PathVariable String id) {

		Characters character = characterService.getCharacterById(id);
		if(character == null) {
			throw new NotFoundException(id);
		}
		return new ResponseEntity<Characters>(character, HttpStatus.OK);
		
	}

	// DTO(Data Transfer Object) : 계층간 데이터 교환을 위한 객체, 여기서는 클라이언트(Postman)에서 오는 데이터를 수신할 목적으로 사용
    // Product와 ProductDto와의 차이를 비교해서 살펴보기 바람
    @RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Characters> createCharacter(@RequestBody @Valid CharacterDto request) {

		Characters character = characterService.createCharacter(request.getChar_name(), request.getPrice());

		return new ResponseEntity<Characters>(character, HttpStatus.CREATED);
	}
    
	@RequestMapping(path = "/{id}", method = RequestMethod.PUT)
	public ResponseEntity<Characters> updateCharacter(@PathVariable String id, @RequestBody @Valid CharacterDto request) {
		
		Characters currentCharacter = characterService.getCharacterById(id);
		
		if(currentCharacter == null) {
			throw new NotFoundException(id);
		}
		
		currentCharacter.setChar_name(request.getChar_name());
		currentCharacter.setPrice(request.getPrice());
		
		characterService.updateCharacter(currentCharacter);
		
		return new ResponseEntity<Characters>(currentCharacter, HttpStatus.OK);
		
	}

	@RequestMapping(path = "/{id}", method = RequestMethod.DELETE)
	public ResponseEntity<Void> deleteCharacter(@PathVariable String id) {
		// Getting the requiring product; or throwing exception if not found
		final Characters character = characterService.getCharacterById(id);
		
		if(character == null)
			throw new NotFoundException(id);						

		// Deleting product from the application...
		characterService.deleteCharacter(character);

		return new ResponseEntity<>(HttpStatus.NO_CONTENT); //아래와 동일한 기능
		//return ResponseEntity.noContent().build();

	}
	
	@Getter
	@Setter
	static class CharacterDto {
		
        @NotNull(message = "name is required")
        @Size(message = "name must be equal to or lower than 300", min = 1, max = 300)
        private String char_name;           
        
        @NotNull(message = "name is required")
        @Min(0)
        private int price;
	}
	
}
