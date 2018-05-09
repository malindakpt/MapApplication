package manager;

import entitiy.BaseEntity.Entity;
import entitiy.Location;
import manager.BaseManager.PersistanceInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MockEntityManager implements PersistanceInterface{

    private static MockEntityManager instance;
    private List<Entity> locations = new ArrayList<Entity>();
    private int countIdx = 0;

    protected static MockEntityManager getInstance(){
        if(instance == null){
            instance = new MockEntityManager();
            instance.loadInitialData();
        }
        return instance;
    }

    @Override
    public void add(Entity entity){
        this.locations.add(entity);
    }

    @Override
    public void delete(Class entity, int id) {
        for (Iterator<Entity> iter = this.locations.listIterator(); iter.hasNext(); ) {
            Location location = (Location) iter.next();
            if (location.getId() == id ) {
                iter.remove();
            }
        }
    }

    @Override
    public List<Entity> getEntities(Class entity){
      return this.locations;
    }

    public List<Entity> getLocations() {
        return locations;
    }

    private void loadInitialData(){
        instance.getLocations().add(new Location(instance.countIdx++, "Home", 7.025356, 79.880083));
        instance.getLocations().add(new Location(instance.countIdx++, "School", 7.2945439,80.590676));
        instance.getLocations().add(new Location(instance.countIdx++, "University", 7.7411541,80.0896846));
        instance.getLocations().add(new Location(instance.countIdx++, "Work", 6.9513649,80.7458416));
    }
}
