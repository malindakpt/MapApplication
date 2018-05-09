package manager;

import entitiy.BaseEntity.Entity;
import util.HibernateUtilqw;
import manager.BaseManager.PersistanceInterface;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class SQLEntityManager implements PersistanceInterface {

    private static PersistanceInterface instance;

    protected static PersistanceInterface getInstance(){
        if(instance == null){
            instance = new SQLEntityManager();
        }
        return instance;
    }

    @Override
    public void add(Entity entity){
        Session session = null;
        try {
            session = HibernateUtilqw.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(entity);
            session.getTransaction().commit();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            session.close();
        }
    }

    @Override
    public void delete(Class entity, int value) {
        Session session = HibernateUtilqw.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.beginTransaction();
            Query query = session.createQuery("delete " + entity.getSimpleName() + " where id = :value");
            query.setParameter("value", value);
            query.executeUpdate();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

    @Override
    public List<Entity> getEntities(Class entity){
        List<Entity> entities;
        Session session = null;
        Transaction tx = null;

        try {
            session = HibernateUtilqw.getSessionFactory().openSession();
            tx = session.beginTransaction();
            entities = session.createQuery("FROM "+entity.getSimpleName()).list();

            tx.commit();
            return entities;
        } catch (Exception e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        return null;
    }
}
