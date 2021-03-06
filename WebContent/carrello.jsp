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
<%Carrello carrello = (Carrello)session.getAttribute("carrello"); %>

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
                                    <th class="product_remove">Rimuovi</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%if(carrello != null && !carrello.isEmpty()){
                            for (CarrelloItem i : carrello.getProdotti()){
                            	
                            	%>
                            
                                <tr>
                                    <td class="product_thumb"><img src="assets/img/prodotti/<%=i.getProdotto().getIdProdotto() %>.jpg" alt=""></td>
                                    <td class="product_name"><a href="#"><%=i.getProdotto().getNome() %></a></td>
                                    <td class="product-price">???<%=String.format("%.2f",i.getProdotto().getPrezzo()) %></td>
                                    
                                    <td class="product_quantity"><%=i.getQuantita() %>  
                                     <a href="AggiungiCarrello?id=<%=i.getProdotto().getIdProdotto()%>&quantita=1"><img src="assets/img/plus.jpg" style="width:30px; height:30px"></a>
                                     <a href="AggiungiCarrello?id=<%=i.getProdotto().getIdProdotto()%>&quantita=-1"><img src="assets/img/minus.png" style="width:30px; height:30px"></a>
                                     
                                    </td>
                                    <td class="product_total">???<%=String.format("%.2f",i.getProdotto().getPrezzo() * i.getQuantita() )%></td>
									<td class="product_remove"><a href="RimuoviCarrello?id=<%=i.getProdotto().getIdProdotto()%>"><i class="ion-android-close"></i></a></td>
                                </tr>

                               <%}} %>
                            </tbody>
                        </table>   
                         <div class="cart_submit">
                                <a href="SvuotaCarrello"><button type="submit">Svuota carrello</button></a>
                            </div>      
                            </div>  
                             
                        </div>
                    </div>
                </div>
                <!--coupon code area start-->
                <div class="coupon_area">
                    <div class="row">
                        
                        <div class="col-lg-6 col-md-6">
                            <div class="coupon_code right">
                                <h3>Totale</h3>
                                <div class="coupon_inner">
                               
                                
                               
                                <div class="cart_subtotal">
                                    <p>Totale</p>
                                    <%if(carrello == null || carrello.isEmpty()) {%>
                                    <p class="cart_amount">???0.00</p>
                                    <%}else{ %>
                                    <p class="cart_amount">???<%=String.format("%.2f",carrello.getTotal())%></p>
                                    <%} %>
                                </div>
                                <div class="checkout_btn">
                                
                                <%if(carrello == null || carrello.isEmpty()) {%>
                                <a href="#">Vai all'acquisto</a>
                                <%} else if (logged) {%>
                                    <a href="checkout.jsp">Vai all'acquisto</a>
                                    <%} else{%>
                                     <a href="login.jsp">Vai all'acquisto</a>
                                     <%} %>
                                    
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--coupon code area end-->
            
        </div>     
    </div>
    <!--shopping cart area end -->



<%@include file="footer.jsp" %>

</body>
</html>