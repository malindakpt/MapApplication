function saveLocation() {
    if(!isNaN(parseFloat($('#lat').val())) && !isNaN(parseFloat($('#lon').val())) && $('#name').val() !== '') {
        $('#addLocationModal').hide();
        $.post('SaveLocation',
            {
                name: $('#name').val(),
                lat: $('#lat').val(),
                lon: $('#lon').val()
            },
            function (result) {
                if(result){
                    alert(result);
                }
                getAndSetPage('ManageLocations');
            }).fail(function () {
                alert("Unexpected error occured");
            }
        );
    } else {
        alert("Invalid Inputs. Please Check Again !");
    }
}

function deleteLocation(id) {

    var result = confirm("Are you sure you need to delete this?");
    if (result == true) {
        $.post('DeleteLocation',
            {
                id: id,
            },
            function (result) {
                if(result){
                    alert(result);
                }
                getAndSetPage('ManageLocations');
            }).fail(function () {
                alert("Unexpected error occured");
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