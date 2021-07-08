<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>PlaySpace</title>
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
   <script src="mostraProdotti.js"></script>
   <button id="Sparatutto">ciao</button>
<section class="pt-60 pb-30 gray-bg">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="section-title">
                        <h2>Tranding Products</h2>
                    </div>
                </div>
            </div>
           
               <div id="result"></div>
               
    </section><!--Tranding product-->

   <%@include file="footer.jsp" %>
    
<!-- Plugins JS -->
<script src="assets/js/plugins.js"></script>

<!-- Main JS -->
<script src="assets/js/main.js"></script>


</body>	

</html>