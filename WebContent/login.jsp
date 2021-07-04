<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
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

 
<section class="account">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="account-contents" style="background: url('logo.svg'); background-size: cover;">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="account-thumb">
                                    <h2>Accedi</h2>
                                    
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="account-content">
                                    <form action="Login">
                                       
                                        <div class="single-acc-field">
                                            <label for="email">Email</label>
                                            <input type="email" id="email" placeholder="Inserisci email" name="email" required>
                                        </div>
                                        <div class="single-acc-field">
                                            <label for="password">Password</label>
                                            <input type="password" id="password" placeholder="Inserisci password" name="password" required>
                                        </div>

                                        
                                        <div class="single-acc-field">
                                            <button type="submit">Accedi</button>
                                        </div>
                                        <a href="registrazione.jsp">Non registrato? Registrati</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
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

<!--   03:22:07 GMT -->
</html>