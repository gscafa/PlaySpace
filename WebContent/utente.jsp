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

</head>

<body>
<%Utente utente = (Utente)session.getAttribute("user"); %>
 
<%@include file="header.jsp" %>
  <div class="main_menu_area" style="background-color:red">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-12 col-md-12">
                            <div class="main_menu menu_position"> 
                                <nav>  
                                    <ul>
                                        <li><a href="modDati.jsp">Modifica Dati</a></li>
                                        <li><a href="StoricoOrdini">Storico Ordini</a></li>
                                        
                                       
                                        
                                        
                                    </ul>  
                                </nav> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="width: 600px;padding: 20px;border: 5px solid blue;margin: auto; ">
            <h1 style="text-align:center">Benvenuto/a , <%=utente.getNome() %>!</h1>
            <h3>Riepilogo Dati:</h3>
            <h4>Nome: <%=utente.getNome() + " " + utente.getCognome() %></h4>
             <h4>Indirizzo: <%=utente.getIndirizzo()+", "+ utente.getCitta() %></h4>
              <h4>Nome</h4>
               <h4>Nome</h4>
               </div>
            
            
<%@include file="footer.jsp" %>

   <!-- Plugins JS -->
<script src="assets/js/plugins.js"></script>

<!-- Main JS -->
<script src="assets/js/main.js"></script>

</body>

</html>