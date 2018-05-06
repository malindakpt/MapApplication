function saveLocation() {
    $.post('SaveLocation',
        {
            name: $('#name').val(),
            lat: $('#lat').val(),
            lon: $('#lon').val()
        },
        function (result) {

        }).fail(function () {
            swal("Error", "Unexpected error occured", "error");
        }
    );
}

function getAndSetPage(page, to, skipBusy) {
    if (!skipBusy) {
        busyOn();
    }
    $.get(page, {},
        function (result) {
            if (to) {
                $('#' + to + '').html(result);
            } else {
                $('#home-middle').html(result);
            }
            busyOff();
        }).fail(function () {
            alert("error");
            busyOff();
        }
    );
}

function busyOn() {
    // document.getElementById("myOverlay2").style.display = "block";
    document.getElementById("busyIcon").style.display = "block";
}

function busyOff() {
    // document.getElementById("myOverlay2").style.display = "none";
    document.getElementById("busyIcon").style.display = "none";
}