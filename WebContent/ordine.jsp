<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="model.Carrello" import="model.CarrelloItem" 
    import="model.OrdineItem" import="java.util.ArrayList"%>
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
<%ArrayList<OrdineItem> prodotti =(ArrayList<OrdineItem>) session.getAttribute("prodOrdine"); %>
 
<%@include file="header.jsp" %>


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
                            <%if(prodotti!=null){
                            for (OrdineItem i : prodotti){
                            	
                            	%>
                            
                                <tr>
                                    <td class="product_thumb"><img src="<%=i.getPath() %>" alt=""></td>
                                    <td class="product_name"><a href="#"><%=i.getNome() %></a></td>
                                    <td class="product-price">€<%=String.format("%.2f",i.getPrezzo()) %></td>
                                    <td class="product_quantity"><%=i.getQuantita() %> </td>
                                    <td class="product_total">€<%=String.format("%.2f",i.getPrezzo() * i.getQuantita() )%></td>
                                </tr>

                               <%}} %>
                            </tbody>
                        </table>   
                             
                            </div>  
                             
                        </div>
                    </div>
                </div>

<%@include file="footer.jsp" %>
</body>
</html>