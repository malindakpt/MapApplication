<%@ page import="entitiy.BaseEntity.Entity" %>
<%@ page import="java.util.List" %>
<%@ page import="entitiy.Location" %>
<%@ page import="manager.Persistor" %>
<style>
    #map {
        height: 400px;
        width: 100%;
    }
</style>

<div id="map"></div>
<script>

    function initMap(){
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 12,
            center: { lat: 7.025356, lng:  79.880083 }
        });

        <%
             List<Entity> locations = Persistor.getPersistorInstance().getEntities(Location.class);
             for (Entity entity: locations ) {
                 Location loc = (Location)entity;

        %>
                var place = { lat: <%=loc.getLat()%>, lng:  <%=loc.getLon()%> };
                addMarker(place, map, "<%=loc.getName()%>");
        <%
               }
        %>
    }

    // Adds a marker to the map.
    function addMarker(location, map, label) {
        new google.maps.Marker({
            position: location,
            label: {
                text: label,
                color: "#061b7a",
                fontSize: "17px",
                fontWeight: "bold"
            },
            map: map
        });
    }
</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAyBFuKjE1a2sxCSWsn1DBc0vydMN47N7g&callback=initMap">
</script>