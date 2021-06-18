package com.gaemistorming.healthu.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor

@Entity
@Table(name="authorities")
public class Authority {

	@Id
	@GeneratedValue
	@Column(name="authority_id")
	private long id;
	
	@Column(name="authority")
	private String authority;
	
//	private long user_id;
	
	@OneToOne(optional=false, cascade=CascadeType.ALL)
	@JoinColumn(unique=true, name="id")
	private Users user;
	
}
