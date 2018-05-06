<style>
    #map {
        height: 500px;
        width: 100%;
    }
</style>

<div id="map"></div>
<script>
    function initMap(){
        var uluru = {lat: 7.036175, lng: 79.957909};
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 10,
            center: uluru
        });
        var marker = new google.maps.Marker({
            position: uluru,
            map: map
        });
    }
</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAyBFuKjE1a2sxCSWsn1DBc0vydMN47N7g&callback=initMap">
</script>