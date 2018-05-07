<!DOCTYPE html>
<html>
<head>

    <title>Map Marker</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/theme.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="js/jQuery.js"></script>
    <script src="js/main.js"></script>

</head>


<body>

<div class="loader" id="busyIcon" style="display: none"></div>

<jsp:include page="sub-components/left-menu.jsp"/>

<div class="w3-padding-large" id="main">

    <jsp:include page="sub-components/header.jsp"/>

    <div class="w3-content w3-justify w3-text-grey w3-padding-32" id="about">
        <div id="home-middle">

        </div>
    </div>

</div>

</body>
<script>getAndSetPage('MapViewer')</script>
</html>
