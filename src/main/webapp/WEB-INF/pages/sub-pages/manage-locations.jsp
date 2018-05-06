<%@ page import="entitiy.BaseEntity.Entity" %>
<%@ page import="java.util.List" %>
<%@ page import="manager.EntityManager" %>
<%@ page import="entitiy.Location" %>
<div class="w3-container">
    <button onclick="$('#addLocationModal').show()" class="w3-button w3-black float-right">Add Location</button>
    <h2>W3.CSS Modal</h2>
    <p>Add the w3-card-* class to the w3-modal-content container to display the modal as a card.</p>


    <div id="addLocationModal" class="w3-modal">
        <div class="w3-modal-content w3-card-4 add-modal">
            <header class="w3-container w3-teal">
        <span onclick="$('#addLocationModal').hide()"
              class="w3-button w3-display-topright">&times;</span>
                <h2>Modal Header</h2>
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
            <footer class="w3-container w3-teal">
                <p>
                    <button class="w3-btn w3-blue" onclick="saveLocation()">Save</button>
                </p>
            </footer>
        </div>
    </div>



    <div class="w3-container">
        <h2>Striped Bordered Table</h2>

        <table class="w3-table w3-striped w3-bordered">
            <tr>
                <th>Location Name</th>
                <th>Lattitude</th>
                <th>Longitude</th>
                <th></th>
            </tr>

            <%
                List<Entity> locations = EntityManager.getInstance().getEntities(Location.class);
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
