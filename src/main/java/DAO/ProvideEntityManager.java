package DAO;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

public class ProvideEntityManager {
	public static EntityManager entityManager;
	public static EntityManager provideEntityManager() {
		return Persistence.createEntityManagerFactory("yuvraj").createEntityManager() ;
	}
}
