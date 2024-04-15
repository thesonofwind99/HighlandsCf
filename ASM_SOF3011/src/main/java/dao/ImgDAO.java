package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import model.Prod;
import utils.JpaUtils;

public class ImgDAO {
	private EntityManager em = JpaUtils.getEntityManager();
	@Override
	protected void finalize() throws Throwable {
		em.close(); //Đống cái em lại khi DAO bị giải phóng
		super.finalize();
	}
	
	public List<String> selectAllImgById(Prod prod){
		String jpql = "SELECT o.img_clone FROM Img_prod o WHERE o.prod = :prod";
		TypedQuery<String> query = em.createQuery(jpql, String.class);
		query.setParameter("prod", prod);
		return query.getResultList();
	}
	
}
