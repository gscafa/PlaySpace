<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="model.Utente" import="model.Carrello"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    
    <!-- CSS 
    ========================= -->
   

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/css/plugins.css">
    
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/custom.css">
</head>
<body>
  <%
Boolean logged = (Boolean) session.getAttribute("logged");
  if(logged==null) logged = false;
  Boolean admin = (Boolean) session.getAttribute("admin");
  if(admin == null) admin = false;
 int q;
 if(session.getAttribute("q") ==null)
	 q=0;
 else q = (int)session.getAttribute("q");
 
 
 
%>  
 <!--header area start-->
    <!--Offcanvas menu area start-->
    <div class="off_canvars_overlay">
            
    </div>
    <div class="Offcanvas_menu">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="canvas_open">
                        <a href="javascript:void(0)"><i class="ion-navicon"></i></a>
                    </div>
                    <div class="Offcanvas_menu_wrapper">
                        <div class="canvas_close">
                              <a href="javascript:void(0)"><i class="ion-android-close"></i></a>  
                        </div>
                        
                        <div class="top_right text-right">
                            <ul>
                               <li><a href="my-account.html"> My Account </a></li> 
                               <li><a href="checkout.html"> Checkout </a></li> 
                            </ul>
                        </div> 
                        <div class="search_container">
                           <form action="#">
                                <div class="search_box">
                                    <input placeholder="Search product..." type="text">
                                    <button type="submit">Search</button> 
                                </div>
                            </form>
                        </div> 
                        
                        <div class="middel_right_info">
                            <div class="header_wishlist">
                                <a href="utente.jsp"><img src="assets/img/user.png" alt=""></a>
                            </div>
                            <div class="mini_cart_wrapper">
                                <a href="carrello.jsp"><img src="assets/img/shopping-bag.png" alt=""></a>
                                <span class="cart_quantity"><%=q %></span>
                                <!--mini cart-->
                                
                                 
                                <!--mini cart end-->
                            </div>
                        </div>
                        <div id="menu" class="text-left ">
                            <ul class="offcanvas_main_menu">
                                <li class="menu-item-has-children active">
                                    <a href="index.jsp">Home</a>
                                </li>
                                
                                <li class="menu-item-has-children">
                                    <a href="#">Categorie</a>
                                    <ul class="sub-menu">
                                    <li><a href="about.html">Tutti</a></li>
                                    <li><a href="about.html">Consoles</a></li>
                                        <li><a href="about.html">RPG</a></li>
										<li><a href="contact.html">Sparatutto</a></li>
										<li><a href="privacy-policy.html">Avventura</a></li>
										<li><a href="faq.html">Sport</a></li>
										
                                    </ul>
                                </li>
                               
                                
                                <li class="menu-item-has-children">
                                    <a href="contact.html"> Contattaci</a> 
                                </li>
                            </ul>
                        </div>

                        <div class="Offcanvas_footer">
                            
                            <ul>
                                <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="pinterest"><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Offcanvas menu area end-->
    
    <header>
        
            <!--header top start-->
            <!--header middel start-->
            <div class="header_middle">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-6">
                            <div class="-">
                                <a href="index.jsp"><img src="assets/img/logo/logo_white_large.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-6">
                            <div class="middel_right">
                               
                                <div class="middel_right_info">
                                    <div class="header_wishlist">
                                    <%if(admin == true && logged == true) {%>
                                        <a href="admin.jsp"><img src="assets/img/user.png" alt=""></a>
                                        <%}
                                    else if(logged == true){%>
                                    <a href="utente.jsp"><img src="assets/img/user.png" alt=""></a>
                                        <%}
                                        else {%>
                                        <a href="login.jsp"><img src="assets/img/user.png" alt=""></a>
                                        <%} %>
                                    </div>
                                    <div class="mini_cart_wrapper">
                                        <a href="carrello.jsp"><img src="assets/img/shopping-bag.png" alt=""></a>
                                        <span class="cart_quantity"><%=q %></span>
                                        <!--mini cart-->
                                         
                                        <!--mini cart end-->
                                         
                                    </div>
                                    <%if(logged){ %>
                             <a href="Logout"><h4 style="color:white;">&nbsp;&nbsp;&nbsp;&nbsp;Logout</h4></a><%} %>
                                </div>
                                
                               
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <!--header middel end-->
            <!--header bottom satrt-->
            <div class="main_menu_area">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-12 col-md-12">
                            <div class="main_menu menu_position"> 
                                <nav>  
                                    <ul>
                                        <li><a href="index.jsp">home</a></li>
                                        
                                        
                                        <li><a class="active" href="prodotti.jsp">categorie <i class="fa fa-angle-down"></i></a>
                                            <ul class="sub_menu pages">
                                           		<li><a href="#" id="Tutti">Tutti</a></li>
                                            	<li><a href="#" id="Console">Consoles</a></li>
                                                <li><a href="#" id="RPG">RPG</a></li>
                                                <li><a href="#" id="Sparatutto">Sparatutto</a></li>
                                                <li><a href="#" id="Avventura">Avventura</a></li>
                                                <li><a href="#" id="Sport">Sport</a></li>
                                                
                                            </ul>
                                        </li>
                                        
                                        <li><a href="contact.html"> Contattaci</a></li>
                                    </ul>  
                                </nav> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--header bottom end-->
        
    </header>

 


</body>
</html>