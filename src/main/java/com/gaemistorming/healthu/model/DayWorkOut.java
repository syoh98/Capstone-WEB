package com.gaemistorming.healthu.model;

import java.util.Date;

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
@Table(name="dayWorkout")
public class DayWorkOut {

	@Id
	@GeneratedValue
	@Column(name="dayWO_id")
	private long id;
	
	private String day; // 현재 날짜
	//private Date date = new Date();
	private boolean day_count; // 출석했는지 안했는지
	private float day_cal; // 하루 소모 칼로리
	private float day_time; // 하루 소요 시간, 나중에 60초 또는 60분 씩 알아서 계산할거임
	
//	@OneToOne(optional=false, cascade=CascadeType.ALL)
//	@JoinColumn(unique=true, name="id")
//	private Users user;
	private long user_id;
	
}
