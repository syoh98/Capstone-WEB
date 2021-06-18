package com.gaemistorming.healthu.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gaemistorming.healthu.dao.AuthorityDao;
import com.gaemistorming.healthu.model.Authority;
import com.gaemistorming.healthu.model.Users;

@Service
@Transactional
public class AuthorityService {

	@Autowired
    private AuthorityDao authorityDao;

    public List<Authority> getAllAuthority() {
        return authorityDao.getAuthority();
    }
    
    public Authority getAuthorityById(Long id) {
        return authorityDao.getAuthorityById(id);
    }
    
    public Authority createAuthority(String authority) {
        Authority authority1 = new Authority();
        authority1.setAuthority(authority);

        Long id =  authorityDao.addAuthority(authority1);
        authority1.setId(id);
        
        return authority1;
    }

    public void updateAuthority(Authority authority) {    	
        authorityDao.updateAuthority(authority);
    }
    
    public void deleteAuthority(Authority authority) {
        authorityDao.deleteAuthority(authority);
    }
    
    public void insert(Authority authority) {
    	authorityDao.insert(authority);
    }
	
}
