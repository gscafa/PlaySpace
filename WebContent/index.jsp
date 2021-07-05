<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html class="no-js" lang="en">

<!--   03:20:39 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>PlaySpace - Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo_small_icon_only.png">
    
    <!-- CSS 
    ========================= -->
   

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/css/plugins.css">
    
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/custom.css">

</head>

<body>

 
<%@include file="header.jsp" %>
 <%if (logged==true) out.println("<h1>Cionnnaaaa</h1>");%>


 <section class="slider_section d-flex align-items-center" >
        <div class="slider_area owl-carousel">
            <div class="single_slider d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-md-6">
                            <div class="slider_content">
                            <br><br><br><br><br><br>
                                <h1>PlayStation 5</h1>
                                <h2>Play Like Never Before</h2>
                                <p>Disponibile ora!</p>
                                <a class="button" href="product-details.html">Acquista</a>
                            </div>
                        </div>
                        <div class="col-xl-6 col-md-6">
                            <div class="slider_content">
                                <img src="assets/img/prodotti/ps5.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="single_slider d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-md-6">
                            <div class="slider_content">
                            <br><br><br><br><br><br><br><br><br><br>
                                <h1>Xbox Series X</h1>
                                <h2>Power Your Dreams</h2>
                                <p>Disponibile ora!</p>
                                <a class="button" href="product-details.html">Acquista</a>
                            </div>
                        </div>                        
                        <div class="col-xl-6 col-md-6">
                            <div class="slider_content">
                                <img src="assets/img/prodotti/xboxsx.png" alt="" width="600" height="700">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single_slider d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-md-6">
                            <div class="slider_content">
                                <h1>Nintendo Switch</h1>
                                <h2>Divertiti dove, quando e con chi vuoi!</h2>
                                <p>Disponibile ora!</p>
                                <a class="button" href="product-details.html">Acquista</a>
                            </div>
                        </div>                      
                        <div class="col-xl-6 col-md-6">
                            <div class="slider_content">
                                <img src="assets/img/prodotti/nintendo_switch.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>




<%@ include file="footer.jsp" %>


   <!-- Plugins JS -->
<script src="assets/js/plugins.js"></script>

<!-- Main JS -->
<script src="assets/js/main.js"></script>
</body>

<!--   03:22:07 GMT -->
</html>