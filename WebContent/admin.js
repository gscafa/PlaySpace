$(document).ready(function (){
	
	$( "#prodotti" ).click(function() {
		$.getJSON("MostraTutto", function (object, status){
			$("#result").empty();
			
			for(x in object){

				var current = object[x];
				
				var card = (" <div class='col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12'> "+
                   " <div class='single-tranding'> "+
                      "  <a href='DettaglioProdotto?id="+current.idProdotto+"'> "+
                         "   <div class='tranding-pro-img'> "+
                               " <img src='assets/img/prodotti/"+current.idProdotto+".jpg' style='width:403px;height:521px'>"+ 
                           " </div>"+
                            " <div class='tranding-pro-title'> "+
                               " <h3>"+current.nome+"</h3> "+
                               " <h4>"+current.piattaforma+"</h4>" +
                            "</div>"+
                            "<div class='tranding-pro-price'>"+
                               " <div class='price_box'>"+
                                   " <span class='current_price'>€"+current.prezzo.toFixed(2)+"</span>"+    
                                "</div>"+
                            "</div>"+
                       " </a>"+
                       "<div class='search_box'>" +
                         "<a href='RimuoviProdotto?id="+current.idProdotto+"'<button class='button'>Rimuovi Prodotto</button></a> "+
                         "<a href='modificaProdotto.jsp?id="+current.idProdotto+"'<button class='button'>Modifica Prodotto</button></a> "+              
                         "</div><br><br>" +
                    "</div>"+
                "</div>");
						 
				

				$("#result").append(card);	
				
			}
			
		})
	})
	
	
	})