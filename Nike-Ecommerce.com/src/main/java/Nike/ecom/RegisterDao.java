package Nike.ecom;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class RegisterDao {

	public Session reigister_db() {
		
		SessionFactory factory =
			    new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = factory.openSession();
	
		
		return session;
		
	}
	
	
	
}
