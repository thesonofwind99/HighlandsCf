package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Img_prod {
	@Id
	String id_img;
	@ManyToOne @JoinColumn(name="ID_PROD")
	Prod prod;
	String img_clone;
	public Img_prod() {
		super();
	}
	public Img_prod(String id_img, Prod prod, String img_clone) {
		super();
		this.id_img = id_img;
		this.prod = prod;
		this.img_clone = img_clone;
	}
	public String getId_img() {
		return id_img;
	}
	public void setId_img(String id_img) {
		this.id_img = id_img;
	}
	public Prod getProd() {
		return prod;
	}
	public void setProd(Prod prod) {
		this.prod = prod;
	}
	public String getImg_clone() {
		return img_clone;
	}
	public void setImg_clone(String img_clone) {
		this.img_clone = img_clone;
	}
	
	
}
