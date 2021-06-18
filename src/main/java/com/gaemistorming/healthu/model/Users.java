package com.gaemistorming.healthu.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor

@Entity
@Table(name="users")
public class Users implements UserDetails{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name="id")
	private long id;
	
	@Column(name="user_id")
	private String user_id;
	
	@Column(name = "username", nullable = false)
	private String username;
	
	@Column(name = "password", nullable = false)
	private String password;
	
	@Column(name = "enabled", nullable = false, columnDefinition = "TINYINT(1)")
	private boolean enabled; // 1이면 로그인 가능, 0이면 로그인 x

	@Column(name = "gender")
	private String gender;

	@Column(name = "weight")
	private float weight;

	@Column(name = "height")
	private float height;
	
	@Column(name = "profile_character")
	private String profile_character;

	@Column(name = "purpose")
	private String purpose;

	@Column(name = "point")
	private int point;
	
	private int cheeseAeong;
	private int blackAeong;
	private int banana;
	private int cookies;
	private int woody;
	private int haribo;
	private int gongdaesang;
	private int military;
	private int boogi;
	private int sue;
	private int hanbok;
	private int dftChar;
	private int rapunzel;
	
	private float day_time;
	private float day_cal;

	@ManyToMany(fetch = FetchType.EAGER, mappedBy = "user")
	private Set<Characters> character;
	
//	@OneToOne(mappedBy="user", cascade=CascadeType.ALL)
//	private DayWorkOut dayWO;
	
	@OneToOne(mappedBy="user", cascade=CascadeType.ALL)
	private Authority authority;

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
	     return null;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return enabled;
	}
	
}
