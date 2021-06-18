package com.gaemistorming.healthu.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor

@Entity
@Table(name="characters")
public class Characters {

	@Id
	@GeneratedValue
	@Column(name="char_id")
	private String id;
	
	private String char_name;
	
	private int price;
	
//	@ManyToOne(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
//	@JoinColumn(name="user_id")
//	private Users user;
	
	@ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "user_character", joinColumns = @JoinColumn(name = "char_id"), inverseJoinColumns = @JoinColumn(name = "user_id"))
	@JsonIgnore
	private Set<Users> user;
}
