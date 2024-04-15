package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "ADMIN")
@Entity
public class Admin {
	@Id
	String id_admin;
	String username;
	String password;
	public Admin() {
		super();
	}
	public Admin(String id_admin, String username, String password) {
		super();
		this.id_admin = id_admin;
		this.username = username;
		this.password = password;
	}
	public String getId_admin() {
		return id_admin;
	}
	public void setId_admin(String id_admin) {
		this.id_admin = id_admin;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
