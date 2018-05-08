<%@ page import="entitiy.BaseEntity.Entity" %>
<%@ page import="java.util.List" %>
<%@ page import="manager.SQLEntityManager" %>
<%@ page import="entitiy.Location" %>
<%@ page import="manager.MockEntityManager" %>
<%@ page import="factory.PersistorFactory" %>
<div class="w3-container">
    <button onclick="$('#addLocationModal').show()" class="w3-button w3-black float-right"><i class="fa fa-plus-circle"></i> Add Location</button>
    <h2>Location Manager</h2>
    <p>Add or Remove the locations to map according to your preference</p>

    <div id="addLocationModal" class="w3-modal">
        <div class="w3-modal-content w3-card-4 add-modal">
            <header class="w3-container w3-blue">
        <span onclick="$('#addLocationModal').hide()"
              class="w3-button w3-display-topright">&times;</span>
                <h2>Add Location</h2>
            </header>
            <div class="w3-container">
                <p>
                    <label>Name</label>
                    <input id="name" class="w3-input" type="text">

                    <label>latitude</label>
                    <input id="lat" class="w3-input" type="text">

                    <label>longitude</label>
                    <input id="lon" class="w3-input" type="text">
                </p>
            </div>
            <footer class="w3-container w3-light-gray">
                <p>
                    <button class="w3-btn w3-blue save-button" onclick="saveLocation()">Save</button>
                </p>
            </footer>
        </div>
    </div>

    <br>

    <div class="w3-container">
       <table class="w3-table w3-striped w3-bordered">
            <tr>
                <th>Location Name</th>
                <th>Lattitude</th>
                <th>Longitude</th>
                <th></th>
            </tr>

            <%
                List<Entity> locations = PersistorFactory.getPersistor().getEntities(Location.class);
                for (Entity entity: locations ) {
                    Location loc = (Location)entity;

            %>
            <tr>
                <td><%=loc.getName()%></td>
                <td><%=loc.getLat()%></td>
                <td><%=loc.getLon()%></td>
                <td><i class="fa fa-trash-o hover-hand"  onclick="deleteLocation(<%=loc.getId()%>)"></i></td>
            </tr>
            <%
                }
            %>

        </table>
    </div>
</div>
