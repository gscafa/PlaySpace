<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<!--   03:20:39 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>PlaySpace - Modifica i dati</title>
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

<%@ include file="header.jsp" %>
<%Utente utente = (Utente)session.getAttribute("user"); %> 

 
<section class="account">
        <div class="container">
            <div class="row justify-content-center">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="account-content">
                                    <form action="ModificaDati" method="post">
                                       
                                       
                                        <div class="single-acc-field">
                                            <label for="password">Vecchia password</label>
                                            <input type="password" id="passwordv" placeholder="Inserisci vecchia password" name="passwordv" required>
                                        </div>
                                        <div class="single-acc-field">
                                            <label for="password">Nuova password</label>
                                            <input type="password" id="passwordn" placeholder="Inserisci nuova password" name="passwordn" required>
                                        </div>
                                        <div class="single-acc-field">
                                            <label for="username">Nuova email</label>
                                            <input type="email" id="email" placeholder="Inserisci email" name="email" required>
                                        </div>
                                        <input type="hidden" value="<%=utente.getUsername() %>" name="user">
                                       
                                        <div class="single-acc-field">
                                            <button type="submit">Modifica</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
             
    </section>
</body>

<%@include file="footer.jsp" %>

   <!-- Plugins JS -->
<script src="assets/js/plugins.js"></script>

<!-- Main JS -->
<script src="assets/js/main.js"></script>

</html>