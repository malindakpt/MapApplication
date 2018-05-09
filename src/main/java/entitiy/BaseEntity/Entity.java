package entitiy.BaseEntity;
import javax.persistence.*;

@MappedSuperclass
public class Entity  implements java.io.Serializable {

    public int id;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", unique = true, nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
