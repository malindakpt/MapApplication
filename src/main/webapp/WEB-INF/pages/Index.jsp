<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" href="css/theme.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="js/main.js"></script>
<script src="js/jQuery.js"></script>
<body class="w3-black">


<div class="loader" id="busyIcon" style="display: none"></div>
<%--<div class="w3-overlay w3-animate-opacity" style="cursor:pointer" style="display: block" id="myOverlay2"></div>--%>



<jsp:include page="sub-components/left-menu.jsp"/>

<!-- Page Content -->
<div class="w3-padding-large" id="main">
   <jsp:include page="sub-components/header.jsp"/>

    <!-- About Section -->
    <div class="w3-content w3-justify w3-text-grey w3-padding-64" id="about">
        <div id="home-middle">

        </div>
    </div>


    <%--<!-- Footer -->--%>
    <footer class="w3-content w3-padding-64 w3-text-grey w3-xlarge">
        <i class="fa fa-facebook-official w3-hover-opacity"></i>
        <i class="fa fa-instagram w3-hover-opacity"></i>
        <i class="fa fa-snapchat w3-hover-opacity"></i>
        <i class="fa fa-pinterest-p w3-hover-opacity"></i>
        <i class="fa fa-twitter w3-hover-opacity"></i>
        <i class="fa fa-linkedin w3-hover-opacity"></i>
        <p class="w3-medium">Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank" class="w3-hover-text-green">w3.css</a></p>
        <!-- End footer -->
    </footer>

    <!-- END PAGE CONTENT -->
</div>

</body>
</html>
