<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.Utente"%>

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
	<script src="jquery-3.6.0.min.js"></script>
    <script src="admin.js"></script>
</head>

<body>

 
<%@include file="header.jsp" %>

  <div class="main_menu_area" style="background-color:red">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-12 col-md-12">
                            <div class="main_menu menu_position"> 
                                <nav>  
                                    <ul>
                                        <li><a href="#" id="prodotti">Visualizza prodotti</a></li>
                                        <li><a href="#" id="aggiungi">Aggiungi prodotto</a></li>
                                        <li><a href="TuttiOrdini" id="ordini">Visualizza Ordini</a></li>

                                    </ul>  
                                </nav> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br><br>
            <div class="container">
           
            <div class="row justify-content-center" id="result">
                
               
               
            </div>
        </div>

<%@include file="footer.jsp" %>

</body>
</html>