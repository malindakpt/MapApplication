package entitiy;

import entitiy.BaseEntity.Entity;

import javax.persistence.*;

/**
 * Created by MalindaK on 5/7/2018.
 */
@javax.persistence.Entity
@Table(name = "location", catalog = "map", uniqueConstraints = {
        @UniqueConstraint(columnNames = "id")})
public class Location extends Entity {


    private String name;
    private float lat;
    private float lon;

    public Location(){}
    public Location(String name, float lat, float lon){
        this.name = name;
        this.lat = lat;
        this.lon = lon;
    }




    @Column(name = "name", nullable = true, length = 40)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "lat", nullable = true, length = 40)
    public float getLat() {
        return lat;
    }

    public void setLat(float lat) {
        this.lat = lat;
    }

    @Column(name = "lon", nullable = true, length = 40)
    public float getLon() {
        return lon;
    }

    public void setLon(float lon) {
        this.lon = lon;
    }
}
