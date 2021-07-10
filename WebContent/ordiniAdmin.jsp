<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="model.Carrello" import="model.CarrelloItem" 
    import="model.Ordine" import="java.util.ArrayList"%>
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
<%ArrayList<Ordine> ordini =(ArrayList<Ordine>) session.getAttribute("ordini"); %>
 
<%@include file="header.jsp" %>
<div class="main_menu_area" style="background-color:red">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-12 col-md-12">
                            <div class="main_menu menu_position"> 
                                <nav>  
                                    <ul>
                                        <li><a href="admin.jsp" id="prodotti">Visualizza prodotti</a></li>
                                        <li><a href="#" id="aggiungi">Aggiungi prodotto</a></li>
                                        <li><a href="TuttiOrdini" id="ordini">Visualizza Ordini</a></li>

                                    </ul>  
                                </nav> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br><br>
            
<br><br>
<H1 style="text-align:center">Storico Ordini</H1>
<div class="shopping_cart_area mt-60">
        <div class="container">  
             
                <div class="row">
                    <div class="col-12">
                        <div class="table_desc">
                            <div class="cart_page table-responsive">
                                <table>
                            <thead>
                                <tr>
                                    <th class="product_thumb">Data</th>
                                    <th class="product_name">Totale</th>
                                    <th class="product_name">Utente</th>
                                    <th class="product_name">Visualizza</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                            <%if(ordini != null){
                            for (Ordine i : ordini){ %>
                            
                                <tr>
                                    <td class="product_thumb"><%=i.getData() %></td>
                                    <td class="product_name">€<%=String.format("%.2f",i.getTotale())%></td>
                                    <td class="product_name"><%=i.getUser() %></td>
                                    <td class="product_name"><a href="VisualizzaOrdine?id=<%=i.getIdOrdine()%>">Visualizza</a></td>
                                	
                                </tr>
								<%} }%>
                              
                            </tbody>
                        </table>   
                          
                            </div>  
                             
                        </div>
                    </div>
                </div>
                <!--coupon code area start-->
               
                <!--coupon code area end-->
            
        </div>     
    </div>


<%@include file="footer.jsp" %>

</body>
</html>