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
                    <div class="account-contents" style="background: url('assets/img/logo/logo.svg'); background-size: cover;">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="account-thumb">
                                    <h2>Registrati ora</h2>
                                    
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="account-content">
                                    <form action="Registrazione" method="post" onsubmit="event.preventDefault(); validate(this)">
                                        <div class="single-acc-field">
                                            <label for="name">Nome</label>
                                            <input type="text" id="name" placeholder="Inserisci nome" name="nome" required>
                                            <p id="nomep" style="color:red; "></p>
                                        </div>

                                        <div class="single-acc-field">
                                            <label for="name">Cognome</label>
                                            <input type="text" id="name" placeholder="Inserisci cognome" name="cognome" required>
                                            <p id="cognomep" style="color:red; "></p>
                                        </div>

                                        <div class="single-acc-field">
                                            <label for="email">Email</label>
                                            <input type="email" id="email" placeholder="Inserisci email" name="email" required>
                                        </div>
                                        <div class="single-acc-field">
                                            <label for="password">Password</label>
                                            <input type="password" id="password" placeholder="Inserisci password" name="password" required>
                                        </div>

                                        <div class="single-acc-field">
                                            <label for="indirizzo">Indirizzo</label>
                                            <input type="text" id="indirizzo" placeholder="Inserisci indirizzo" name="indirizzo" required>
                                        </div>

                                        <div class="single-acc-field">
                                            <label for="citta">Citta' </label>
                                            <input type="text" id="citta" placeholder="Inserisci citta" name="citta" required>
                                            <p id="cittap" style="color:red; "></p>
                                        </div>

                                        <div class="single-acc-field">
                                            <label for="dataNascita">Data di nascita</label>
                                            <input type="date" id="dataNascita" name="dataNascita" required>
                                        </div>

                                        <div class="single-acc-field boxes">
                                            <input type="checkbox" id="checkbox">
                                            <label for="checkbox">Accetta termini e condizioni</label>
                                        </div>
                                        <div class="single-acc-field">
                                            <button type="submit">Registrati</button>
                                        </div>
                                        <a href="login.jsp">Già  registrato? Login</a>
                                    </form>
                                </div>
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
<script>
function checkNamesurname(inputtxt) {
	var name = /^[A-Za-z]+$/;;
	if(inputtxt.value.match(name)) 
		return true

	return false;	
}

function checkEmail(inputtxt) {
	var email = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(inputtxt.value.match(email)) 
		return true;
	
	return false;	
}

function checkPhonenumber(inputtxt) {
	var phoneno = /^([0-9]{3}-[0-9]{7})$/;
	if(inputtxt.value.match(phoneno)) 
		return true;
	
	return false;
}


function validate(obj) {	
	var valid = true;	
	
	var name = document.getElementsByName("nome")[0];
	if(!checkNamesurname(name)) {
		valid = false;
		
		document.getElementById("nomep").innerHTML = "Formato non corretto";
	} else {
		
		document.getElementById("nomep").innerHTML = "";
	}
	
	var surname = document.getElementsByName("cognome")[0];
	if(!checkNamesurname(surname)) {
		valid = false;
		document.getElementById("cognomep").innerHTML = "Formato non corretto";
	} else {
		document.getElementById("cognomep").innerHTML = "";
	}
	
	var surname = document.getElementsByName("citta")[0];
	if(!checkNamesurname(surname)) {
		valid = false;
		document.getElementById("cittap").innerHTML = "Formato non corretto";
	} else {
		document.getElementById("cittap").innerHTML = "";
	}
	
	
	
	
	if(valid) obj.submit();
}
</script>

</body>

<!--   03:22:07 GMT -->
</html>