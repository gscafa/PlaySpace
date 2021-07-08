<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
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
                    <section align="left" class="section-title">
                        <h2>"nome utente preso da db"</h2>
                        <a href="modDati.html" target="frame1"><h6>Modifica dati</h6></a>
                        <a href="metPagamento.html" target="frame1"><h6>Mostra metodi di pagamento</h6></a>
                        <a href="modDati.html" target="frame1"><h6>Modifica dati</h6></a>
                        <a href="modDati.html" target="frame1"><h6>Modifica dati</h6></a>
                    </section>
                    	
                    	<aside class="col text-center" >
                    	
                    	<iframe name="frame1" style="height:300px;width:500px;"></iframe>
                    	
                    	</aside>
                    
                    
                        
                </div>
            </div>
</div>

</section>

<%@include file="footer.jsp" %>

   <!-- Plugins JS -->
<script src="assets/js/plugins.js"></script>

<!-- Main JS -->
<script src="assets/js/main.js"></script>

</body>
</html>