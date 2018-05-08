package manager.BaseManager;

import entitiy.BaseEntity.Entity;
import java.util.List;

/**
 * Created by MalindaK on 5/8/2018.
 */
public interface PersistanceInterface {
    public abstract  void add(Entity entity);

    public abstract  void delete(Class entity, int id);

    public abstract  List<Entity> getEntities(Class entity);

}
