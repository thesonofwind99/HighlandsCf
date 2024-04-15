package model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {
	@Id
	String id_cate;
	String cate_name;
	@OneToMany(mappedBy = "cate")
	List<Cate_prod> cate_prods;
	public Category() {
		super();
	}
	public Category(String id_cate, String cate_name, List<Cate_prod> cate_prods) {
		super();
		this.id_cate = id_cate;
		this.cate_name = cate_name;
		this.cate_prods = cate_prods;
	}
	public String getId_cate() {
		return id_cate;
	}
	public void setId_cate(String id_cate) {
		this.id_cate = id_cate;
	}
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	public List<Cate_prod> getCate_prods() {
		return cate_prods;
	}
	public void setCate_prods(List<Cate_prod> cate_prods) {
		this.cate_prods = cate_prods;
	}
	
	
}
