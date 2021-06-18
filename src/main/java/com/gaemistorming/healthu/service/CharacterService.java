package com.gaemistorming.healthu.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gaemistorming.healthu.dao.CharacterDao;
import com.gaemistorming.healthu.model.Characters;
import com.gaemistorming.healthu.model.Users;

@Service
@Transactional
public class CharacterService {

	@Autowired
    private CharacterDao characterRepository;
          
    public List<Characters> getAllCharacters() {
        return characterRepository.getCharacters();
    }

    public Characters getCharacterById(String id) {
        return characterRepository.getCharacterById(id);
    }
    
    public Characters getCharacterById(Long id) {
        return characterRepository.getCharacterById(id);
    	//return this.entityManager.find(Users.class, id);
    }

    public Characters createCharacter(String name, int price) {        
        Characters character = new Characters();
        character.setChar_name(name);
        character.setPrice(price);

        String id = characterRepository.addCharacter(character);
        character.setId(id);
        
        return character;       
    }

    public void updateCharacter(Characters character) {       
        characterRepository.updateCharacter(character);
    }

    public void deleteCharacter(Characters character) {
        characterRepository.deleteCharacter(character);
    }

    public void addToUser(Characters character, Users user) {
    	character.getUser().add(user);
    	
        characterRepository.updateCharacter(character);
    }    
    
    public void removeToUser(Characters character, Users user) {
        character.getUser().remove(user);
        characterRepository.updateCharacter(character);
    }

    public boolean hasUser(Characters character, Users user) {
        return character.getUser().contains(user);
    }
	
}
