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
                                    <th class="product_name">Visualizza</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                            
                            
                                <tr>
                                    <td class="product_thumb"></td>
                                    <td class="product_name"><a href="#"></a></td>
                                    <td class="product_name"><a href="VisualizzaOrdine"></a></td>
                                </tr>

                              
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