package manager;

import entitiy.BaseEntity.Entity;
import entitiy.Location;
import factory.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


public class MockEntityManager {

    private static MockEntityManager instance;
    private List<Entity> locations = new ArrayList<Entity>();
    private int countIdx = 0;

    public static MockEntityManager getInstance(){
        if(instance == null){
            instance = new MockEntityManager();
            instance.getLocations().add(new Location(instance.countIdx++, "Home", 6.925356, 79.880083));
            instance.getLocations().add(new Location(instance.countIdx++, "School", 7.2945439,80.590676));
            instance.getLocations().add(new Location(instance.countIdx++, "University", 7.7411541,80.0896846));
            instance.getLocations().add(new Location(instance.countIdx++, "Work", 6.9513649,80.7458416));
        }
        return instance;
    }

    public void add(Location entity){
        this.locations.add(entity);
    }

    public void delete(Class entity, int id) {
        for (Iterator<Entity> iter = this.locations.listIterator(); iter.hasNext(); ) {
            Location location = (Location) iter.next();
            if (location.getId() == id ) {
                iter.remove();
            }
        }
    }


    public List<Entity> getEntities(Class entity){
      return this.locations;
    }

    public List<Entity> getLocations() {
        return locations;
    }

    public int getCountIdx() {
        return countIdx;
    }

    public void setCountIdx(int countIdx) {
        this.countIdx = countIdx;
    }
}
