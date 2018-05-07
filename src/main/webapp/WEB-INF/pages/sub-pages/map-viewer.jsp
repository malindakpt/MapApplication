<%@ page import="entitiy.BaseEntity.Entity" %>
<%@ page import="manager.EntityManager" %>
<%@ page import="java.util.List" %>
<%@ page import="entitiy.Location" %>
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
             List<Entity> locations = EntityManager.getInstance().getEntities(Location.class);
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
    function addMarker(location, map, lable) {
        // Add the marker at the clicked location, and add the next-available label
        // from the array of alphabetical characters.
        var marker = new google.maps.Marker({
            position: location,
            label: {
                text: lable,
                color: "#061b7a",
                fontSize: "20px",
                fontWeight: "bold"
            },
            map: map
        });
        console.log(location);
    }
</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAyBFuKjE1a2sxCSWsn1DBc0vydMN47N7g&callback=initMap">
</script>