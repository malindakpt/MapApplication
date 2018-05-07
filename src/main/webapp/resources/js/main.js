function saveLocation() {
    $('#addLocationModal').hide();
    $.post('SaveLocation',
        {
            name: $('#name').val(),
            lat: $('#lat').val(),
            lon: $('#lon').val()
        },
        function (result) {
            getAndSetPage('ManageLocations');
        }).fail(function () {
            swal("Error", "Unexpected error occured", "error");
        }
    );
}

function deleteLocation(id) {

    var result = confirm("Are you sure you need to delete this?");
    if (result == true) {
        $.post('DeleteLocation',
            {
                id: id,
            },
            function (result) {
                getAndSetPage('ManageLocations');
            }).fail(function () {
                swal("Error", "Unexpected error occured", "error");
            }
        )
    }
}

function getAndSetPage(page) {
    $('#home-middle').html('');
    busyOn();
    $.get(page, {},
        function (result) {
            $('#home-middle').html(result);
            busyOff();
        }).fail(function () {
            alert("Failed to load "+page);
            busyOff();
        }
    );
}

function busyOn() {
    document.getElementById("busyIcon").style.display = "block";
}

function busyOff() {
    document.getElementById("busyIcon").style.display = "none";
}