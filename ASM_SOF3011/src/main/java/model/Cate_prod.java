package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Cate_prod {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id_cate_prod;
	@ManyToOne @JoinColumn(name = "ID_CATE")
	Category cate;
	@ManyToOne @JoinColumn(name = "ID_PROD")
	Prod prod;
	public Cate_prod() {
		super();
	}
	public Cate_prod(Long id_cate_prod, Category cate, Prod prod) {
		super();
		this.id_cate_prod = id_cate_prod;
		this.cate = cate;
		this.prod = prod;
	}
	public Long getId_cate_prod() {
		return id_cate_prod;
	}
	public void setId_cate_prod(Long id_cate_prod) {
		this.id_cate_prod = id_cate_prod;
	}
	public Category getCate() {
		return cate;
	}
	public void setCate(Category cate) {
		this.cate = cate;
	}
	public Prod getProd() {
		return prod;
	}
	public void setProd(Prod prod) {
		this.prod = prod;
	}
	
}
