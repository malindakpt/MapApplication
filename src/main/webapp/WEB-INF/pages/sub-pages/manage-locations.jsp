
<div class="w3-container">



    <button class="w3-button w3-circle w3-white w3-display-right" onclick="document.getElementById('id01').style.display='block'">+</button>

    <h1>Manage locations</h1>


<div id="id01" class="w3-modal add-modal">
    <div class="w3-modal-content w3-card-4">
        <header class="w3-container w3-teal">
        <span onclick="document.getElementById('id01').style.display='none'"
              class="w3-button w3-display-topright">&times;</span>
            <h2>Modal Header</h2>
        </header>
        <div class="w3-container">
            <label>latitude</label>
            <input class="w3-input" type="text">
            <br>
            <label>longitude</label>
            <input class="w3-input" type="text">
        </div>
        <footer class="w3-container w3-teal">
            <p>Modal Footer</p>
        </footer>
    </div>
</div>

</div>