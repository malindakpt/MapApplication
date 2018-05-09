<%@ page import="entitiy.BaseEntity.Entity" %>
<%@ page import="manager.SQLEntityManager" %>
<%@ page import="java.util.List" %>
<%@ page import="entitiy.Location" %>
<%@ page import="manager.MockEntityManager" %>
<%@ page import="manager.PersistorFactory" %>
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
            center: { lat: 6.9258278, lng:  79.8812892 }
        });

        <%
             List<Entity> locations = PersistorFactory.getPersistor().getEntities(Location.class);
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