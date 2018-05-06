<div class="w3-container">
    <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black float-right">Add Location</button>
    <h2>W3.CSS Modal</h2>
    <p>Add the w3-card-* class to the w3-modal-content container to display the modal as a card.</p>


    <div id="id01" class="w3-modal">
        <div class="w3-modal-content w3-card-4 add-modal">
            <header class="w3-container w3-teal">
        <span onclick="document.getElementById('id01').style.display='none'"
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
</div>
