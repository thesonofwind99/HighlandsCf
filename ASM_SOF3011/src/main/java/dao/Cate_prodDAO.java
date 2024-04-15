package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import utils.JpaUtils;
import model.*;
public class Cate_prodDAO {
	private EntityManager em = JpaUtils.getEntityManager();
	@Override
	protected void finalize() throws Throwable {
		em.close(); //Đống cái em lại khi DAO bị giải phóng
		super.finalize();
	}
	
	public List<Prod> selectAllByNameCate(String cate) {
		String jpql = "SELECT o.prod FROM Cate_prod o WHERE o.cate.cate_name = :cate";
		TypedQuery<Prod> query = em.createQuery(jpql, Prod.class);
		query.setParameter("cate", cate);
		return query.getResultList();
	}
}
