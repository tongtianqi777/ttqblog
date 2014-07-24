package model.dao;

import model.beans.BlogsBean;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import utils.HibernateUtils;

import java.util.List;

/**
 * Created by edwin on 7/23/14.
 */
public class BlogDAOImpl implements BlogDAO {

    @Override
    public void save(BlogsBean blogsBean) {
        Session session = HibernateUtils.createSession();
        try {
            session.beginTransaction();
            session.save(blogsBean);
            session.getTransaction().commit();

        } catch(HibernateException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

    @Override
    public List<BlogsBean> all() {
        String hql = "From BlogsBean";
        Session session = HibernateUtils.createSession();
        List<BlogsBean> list = null;

        try {
            session.beginTransaction();
            Query query = session.createQuery(hql);
            list = query.list();

            session.getTransaction().commit();
        } catch(HibernateException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }

        return list;
    }
}
