package utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaUtils {
	private static EntityManagerFactory factory;
	public static EntityManager getEntityManager() {
		if(factory==null || !factory.isOpen()) {
			factory = Persistence.createEntityManagerFactory("ASM_SOF3011");
		}
		return factory.createEntityManager();
	}
	public static void shutdown() {
		if(factory!=null || factory.isOpen()) {
			factory.close();
		}
		factory = null;
	}
}
