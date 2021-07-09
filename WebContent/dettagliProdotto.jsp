<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="model.Prodotto" import="model.CarrelloItem"%>
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
<%Prodotto p = (Prodotto)session.getAttribute("prodotto"); 

Utente user = (Utente) session.getAttribute("user");

 %>
 
<%@include file="header.jsp" %>

 <div class="product_details mt-60 mb-60">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                   <div class="product-details-tab">
                        
                            
                                <img  src="assets/img/prodotti/<%=p.getIdProdotto() %>.jpg"alt="big-1">
                           
                        
                        
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product_d_right">
                           
                            <h1><%=p.getNome() %></h1>
                            <h4><%=p.getPiattaforma() %></h4>
                            <div class=" product_ratting">
                                <ul>
                                    <%for (int i=0; i< (int)p.getVotoMedio();i++){ %>
                                    <li><i class="fa fa-star"></i></li>
                                   <%} %>
                                </ul>
                                
                            </div>
                            <div class="price_box">
                                <span class="current_price">€<%=String.format("%.2f",p.getPrezzo())%></span>
                               
                                
                            </div>
                            <div class="product_desc">
                                <ul>
                                    <li>Disponibile</li>
                                    
                                </ul>
                            </div>
							
                            <form action="AggiungiCarrello">
                            <div class="product_variant quantity">
                                <label>Quantita'</label>
                                <input min="1" max="100" value="1" type="number" name="quantita">
                                <input type="hidden" name="id" value="<%=p.getIdProdotto() %>">
                                <button class="button" type="submit">Aggiungi al carrello</button>  
                            </div>
                            </form>
                            <%if (logged) {%>
                            <form action="AggiungiVoto" method="post"> 
                             <div class="product_variant quantity">
                                <label>Voto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input min="1" max="5" value="1" type="number" name="voto">
                                <input type="hidden" value="<%=user.getUsername()%>" name="user">
                                <input type="hidden" value="<%=p.getIdProdotto() %>" name="prod">
                                <button class="button" type="submit">Invia voto</button>  
                                
                            </div>
                        </form>
                       <%} %>

                    </div>
                </div>
            </div>
        </div>    
    </div>



<%@include file="footer.jsp" %>

</body>
</html>