package model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Table(name = "PROD")
@Entity
public class Prod {
	@Id
	String id_prod;
	String title;
	String img_main;
	Double price;
	Double sale;
	Double new_price;
	String describe;
	@OneToMany(mappedBy = "prod")
	List<Cate_prod> cate_prod;
	@OneToMany(mappedBy = "prod")
	List<Img_prod> img_prod;
	public Prod() {
		super();
	}
	public Prod(String id_prod, String title, String img_main, Double price, Double sale, Double new_price,
			String describe, List<Cate_prod> cate_prod, List<Img_prod> img_prod) {
		super();
		this.id_prod = id_prod;
		this.title = title;
		this.img_main = img_main;
		this.price = price;
		this.sale = sale;
		this.new_price = new_price;
		this.describe = describe;
		this.cate_prod = cate_prod;
		this.img_prod = img_prod;
	}
	public String getId_prod() {
		return id_prod;
	}
	public void setId_prod(String id_prod) {
		this.id_prod = id_prod;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg_main() {
		return img_main;
	}
	public void setImg_main(String img_main) {
		this.img_main = img_main;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getSale() {
		return sale;
	}
	public void setSale(Double sale) {
		this.sale = sale;
	}
	public Double getNew_price() {
		return new_price;
	}
	public void setNew_price(Double new_price) {
		this.new_price = new_price;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public List<Cate_prod> getCate_prod() {
		return cate_prod;
	}
	public void setCate_prod(List<Cate_prod> cate_prod) {
		this.cate_prod = cate_prod;
	}
	public List<Img_prod> getImg_prod() {
		return img_prod;
	}
	public void setImg_prod(List<Img_prod> img_prod) {
		this.img_prod = img_prod;
	}
	
	
	
	
	
	
	
	
}
