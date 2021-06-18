package com.gaemistorming.healthu.exception;

public class NotFoundException extends RuntimeException {
	
	
	private static final long serialVersionUID = 8795546082074185666L;
	
	private int Id;
	private long character_id;
	private String user_id;
	
	public NotFoundException(int Id) {
		this.Id = Id;
	}

	public NotFoundException(long Id) {
		this.character_id = Id;
	}

	public NotFoundException(String Id) {
		this.user_id = Id;
	}
	
	public long getId() {
		return Id;
	}
}
