<style>
    #map {
        height: 500px;
        width: 100%;
    }
</style>

<div id="map"></div>
<script>
    var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var labelIndex = 0;
    function initMap(){
        var bangalore = { lat: 12.97, lng: 77.59 };
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 12,
            center: bangalore
        });
//        var map = new google.maps.Map(document.getElementById('map'), {
//            zoom: 10,
//            center: uluru
//        });
//        var marker = new google.maps.Marker({
//            position: uluru,
//            map: map
//        });

        addMarker(bangalore, map);
    }

    // Adds a marker to the map.
    function addMarker(location, map) {
        // Add the marker at the clicked location, and add the next-available label
        // from the array of alphabetical characters.
        var marker = new google.maps.Marker({
            position: location,
            label: {
                text: "Malinda",
                color: "#061b7a",
                fontSize: "20px",
                fontWeight: "bold"
            },
            map: map
        });
    }
</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAyBFuKjE1a2sxCSWsn1DBc0vydMN47N7g&callback=initMap">
</script>