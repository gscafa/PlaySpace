<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

<section class="pt-60 pb-30 gray-bg">

<div class="container">
            <div class="row">
                <div class="col text-left">
                    <div class="section-title">
                        <h2>"nome utente preso da db"</h2>
                        <br>
                        <div class="col text-center"> 
                        <iframe name="frame1" height="200" width="300">
                        
                        </iframe>
                        </div>
                        
                    <a href="impostaDati.html" target="frame1"><h6>Modifica dati</h6></a>    
                    </div>
                </div>
            </div>
			

</section>

<%@include file="footer.jsp" %>
</body>
</html>