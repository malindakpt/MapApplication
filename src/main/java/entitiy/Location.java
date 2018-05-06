package entitiy;

import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * Created by MalindaK on 5/7/2018.
 */
@javax.persistence.Entity
@Table(name = "location", catalog = "map", uniqueConstraints = {
        @UniqueConstraint(columnNames = "id")})
public class Location {
    private String name;
    private float lan;
    private float lon;

    @Column(name = "name", nullable = true, length = 40)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "lan", nullable = true, length = 40)
    public float getLan() {
        return lan;
    }

    public void setLan(float lan) {
        this.lan = lan;
    }

    @Column(name = "lon", nullable = true, length = 40)
    public float getLon() {
        return lon;
    }

    public void setLon(float lon) {
        this.lon = lon;
    }
}
