package dao;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import model.Admin;
import utils.JpaUtils;

public class AdminDAO {
	private EntityManager em = JpaUtils.getEntityManager();
	@Override
	protected void finalize() throws Throwable {
		em.close(); //Đống cái em lại khi DAO bị giải phóng
		super.finalize();
	}
	
	public Admin selectByID(String username) {
		String jpl = "SELECT o FROM Admin o WHERE o.username = :username";
		TypedQuery<Admin> query = em.createQuery(jpl, Admin.class);
		query.setParameter("username", username);
		return query.getResultList().isEmpty() ? null : query.getSingleResult();
	}
}
