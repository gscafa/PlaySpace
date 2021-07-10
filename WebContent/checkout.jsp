<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="model.Carrello" import="model.CarrelloItem"%>
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



<%Carrello carrello = (Carrello)session.getAttribute("carrello"); 
Utente utente = (Utente)session.getAttribute("user");%>
<br><br>
<h1 style="text-align:center">Riepilogo Ordine</h1>
 <div class="shopping_cart_area mt-60">
        <div class="container">  
             
                <div class="row">
                    <div class="col-12">
                        <div class="table_desc">
                            <div class="cart_page table-responsive">
                                <table>
                            <thead>
                                <tr>
                                    <th class="product_thumb">Immagine</th>
                                    <th class="product_name">Prodotto</th>
                                    <th class="product-price">Prezzo</th>
                                    <th class="product_quantity">Quantita'</th>
                                    <th class="product_total">Totale</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%if(carrello != null && !carrello.isEmpty()){
                            for (CarrelloItem i : carrello.getProdotti()){
                            	
                            	%>
                            
                                <tr>
                                    <td class="product_thumb"><img src="assets/img/prodotti/<%=i.getProdotto().getIdProdotto() %>.jpg" alt=""></td>
                                    <td class="product_name"><a href="#"><%=i.getProdotto().getNome() %></a></td>
                                    <td class="product-price">€<%=String.format("%.2f",i.getProdotto().getPrezzo()) %></td>
                                    <td class="product_quantity"><%=i.getQuantita() %> </td>
                                    <td class="product_total">€<%=String.format("%.2f",i.getProdotto().getPrezzo() * i.getQuantita() )%></td>
                                </tr>

                               <%}} %>
                            </tbody>
                        </table>   
                           
                            </div>  
                             
                        </div>
                    </div>
                </div>
                
                <div class="coupon_area">
                    <div class="row">
                        
                        <div class="col-lg-6 col-md-6">
                            <div class="coupon_code right">
                                <h3>Riepilogo</h3>
                                <div class="coupon_inner">
                               
                                
                               
                                <div class="cart_subtotal">
                                    <p>Totale</p>
                                    <%if(carrello == null || carrello.isEmpty()) {%>
                                    <p class="cart_amount">€0.00</p>
                                    <%}else{ %>
                                    <p class="cart_amount">€<%=String.format("%.2f",carrello.getTotal())%></p>
                                    <%} %>
                                    
                                    <p>Spedizione a:</p>
                                    <p><%=utente.getIndirizzo() + ", "+utente.getCitta() %>
                                </div>
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h3 align="center">Dati di Pagamento</h3>
                  
        <div class="container">
            <div class="row justify-content-center">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="account-content">
                                  
                                       <form action="Checkout" method="post" onsubmit="event.preventDefault(); validate(this)">
                                        <div class="single-acc-field">
                                            <label for="numerocarta">Numero Carta</label>
                                            <input type="text" id="numerocarta" placeholder="Numero Carta" name="numerocarta" required>
                                        	<p id="numerop" style="color:red"></p>
                                        </div>
                                        <div class="single-acc-field">
                                            <label for="scadenza">Data Di Scadenza</label>
                                            <input type="date" id="scadenza"  name="scadenza" required>
                                            <p id="scadenzap" style="color:red"></p>
                                        </div>
                                        
                                        <div class="single-acc-field">
                                            <label for="intest">Intestatario</label>
                                            <input type="text" id="intest" placeholder="Nome intestatario" name="intest" required>
                                        <p id="nomep" style="color:red"></p>
                                        </div>
                                        
                                        
                                        <div class="single-acc-field">
                                
                                   <button type="submit">Conferma Acquisto</button>
                                   
                                    
                                </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      
                
                
                
                <script>
 function checkNamesurname(inputtxt) {
 	var name = /^[A-Za-z]+$/;
	if(inputtxt.value.match(name)) 
		return true;

	return false;	
                }


function checkCarta(inputtxt) {
	var phoneno = /^([0-9]{16})$/;
	if(inputtxt.value.match(phoneno)) 
		return true;
	
	return false;
}

function checkPassword(inputtxt){
	var pw = /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
	if(inputtxt.value.match(pw))
		return true;
	return false;
}

function checkDate(inputDate){
	var now = new Date().toJSON().slice(0, 10);
	// get date from input field, by default is "YYYY-MM-DD" format
	var b = document.getElementById('scadenza').value;
	if(b<now) return false;
	else return true;

}

function validate(obj) {	
	var valid = true;	
	
	var numero = document.getElementsByName("numerocarta")[0];
	if(!checkCarta(numero)) {
		valid = false;
		
		document.getElementById("numerop").innerHTML = "Formato non corretto";
	} else {
		
		document.getElementById("numerop").innerHTML = "";
	}
	
	var surname = document.getElementsByName("intest")[0];
	if(!checkNamesurname(surname)) {
		valid = false;
		document.getElementById("nomep").innerHTML = "Formato non corretto";
	} else {
		document.getElementById("nomep").innerHTML = "";
	}
	
	var data = document.getElementsByName("scadenza")[0];
	if(!checkDate(data)) {
		valid = false;
		document.getElementById("scadenzap").innerHTML = "Data di Scadenza Superata";
	} else {
		document.getElementById("scadenzap").innerHTML = "";
	}
	
	
	
	if(valid) obj.submit();
}
</script>
                
                
                <!--coupon code area start-->
                
                
                <!--coupon code area end-->
            
      




<%@include file="footer.jsp" %>
</body>
</html>