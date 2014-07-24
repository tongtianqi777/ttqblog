package utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 * Created by edwin on 7/23/14.
 */
public class HibernateUtils {

    private static SessionFactory sessionFactory;
    private static ServiceRegistry serviceRegistry;

    private HibernateUtils() {}

    private static void createHibernateFactory() {
        // A SessionFactory is set up once for an application
        Configuration configuration = new Configuration();
        configuration.configure();
        serviceRegistry = new StandardServiceRegistryBuilder().applySettings(
                configuration.getProperties()).build();
        sessionFactory = configuration.buildSessionFactory(serviceRegistry);
        //sessionFactory = configuration.buildSessionFactory();
    }

    public static synchronized Session createSession() {
        if (sessionFactory == null) {
            createHibernateFactory();
        }
        return sessionFactory.openSession();
    }
}
