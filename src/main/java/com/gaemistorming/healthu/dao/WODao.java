package com.gaemistorming.healthu.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.gaemistorming.healthu.model.Workout;

//@Component("offerDao")
@Repository 
public class WODao {
//	private JdbcTemplate jdbcTemplate;
//
//	@Autowired
//	public void setDataSource(DataSource dataSource) {
//		//jddb template
//		this.jdbcTemplate = new JdbcTemplate(dataSource); 
//	}
//	public int getRowcount() {
//		String sqlStatment= "select count(*) from offers";
//		return jdbcTemplate.queryForObject(sqlStatment, Integer.class); 
//	}
//	
//	//query and return a single object
//	public Offer getOffer(String name) {
//		String sqlStatment = "select * from offers where name =?";
//		return jdbcTemplate.queryForObject(sqlStatment, new Object[] {name}, 
//				new RowMapper<Offer>() {
//
//			@Override
//			public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
//				Offer offer = new Offer();
//				
//				offer.setId(rs.getInt("id"));
//				offer.setName(rs.getString("name"));
//				offer.setEmail(rs.getString("email"));
//				offer.setText(rs.getString("text"));
//				
//				return offer;
//			}
//			
//		});
//	}
//	
//	//query and return multiple object
//	//cRud
//		public List<Offer> getOffers() {
//			
//			String sqlStatment = "select * from offers";
//			return jdbcTemplate.query(sqlStatment, new RowMapper<Offer>(){
//
//				@Override
//				public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
//					
//					Offer offer = new Offer();
//					
//					offer.setId(rs.getInt("id"));
//					offer.setName(rs.getString("name"));
//					offer.setEmail(rs.getString("email"));
//					offer.setText(rs.getString("text"));
//					
//					return offer;
//				}
//				
//			});
//		}
//		
//		//Crud method insert
//		public boolean insert(Offer offer) {
//			String name = offer.getName();
//			String email = offer.getEmail();
//			String text = offer.getText();
//			
//			String sqlStatment ="insert into offers (name, email, text) values (?,?,?)";
//			
//			return (jdbcTemplate.update(sqlStatment, new Object[] {name, email, text}) == 1);
//		}
//		
//		//crUd method update
//		public boolean update(Offer offer) {
//			int id = offer.getId();
//			
//			String name = offer.getName();
//			String email = offer.getEmail();
//			String text = offer.getText();
//			
//			String sqlStatment ="update offers set name =?, email=?, text=? where id=?";
//			
//			return (jdbcTemplate.update(sqlStatment, new Object[] {name, email, text,id}) == 1);
//		}
//		
//		//cruD method delete
//		public boolean delete(int id) {
//			String sqlStatment = "delete from offers where id=?";
//			
//			return (jdbcTemplate.update(sqlStatment, new Object[] {id}) == 1);
//		}
//		
		
}
