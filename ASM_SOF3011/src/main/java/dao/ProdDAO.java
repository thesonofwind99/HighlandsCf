package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import model.Prod;
import utils.JpaUtils;

public class ProdDAO {
	private EntityManager em = JpaUtils.getEntityManager();
	@Override
	protected void finalize() throws Throwable {
		em.close(); //Đống cái em lại khi DAO bị giải phóng
		super.finalize();
	}
	
	public List<Prod> selectAll() {
		TypedQuery<Prod> query = em.createQuery("SELECT o FROM Prod o", Prod.class);
		return query.getResultList();
	}
	
	public Prod findByID(String id) {
		Prod entity = em.find(Prod.class, id);
		return entity;
	}
	
	public Prod create(Prod entity) {
		try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	
	public Prod update(Prod entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	
	public void remove(String id) {
		Prod entity = this.findByID(id);
		try {
			em.getTransaction().begin();
			em.remove(entity);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
}
