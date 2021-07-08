/**
 * 
 */
$(document).ready(function (){
	
	$( "#Sparatutto" ).click(function() {
		$.getJSON("MostraProdotti", {"key": "Sparatutto"} , function (object, status){
			$(".card").remove();
			var num = 0;
			for(x in object){

				var current = object[x];
				
				var card = $(" <div class='col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12'> "+
                   " <div class='single-tranding'> "+
                      "  <a href='product-details.html'> "+
                         "   <div class='tranding-pro-img'> "+
                               " <img src='assets/img/prodotti/"+current.id+".jpg' alt=''>"+ 
                           " </div>"+
                            " <div class='tranding-pro-title'> "+
                               " <h3>"+current.nome+"</h3> "+
                               " <h4>"+current.piattaforma+"</h4>" +
                            "</div>"+
                            "<div class='tranding-pro-price'>"+
                               " <div class='price_box'>"+
                                   " <span class='current_price'>"+current.prezzo+"</span>"+    
                                "</div>"+
                            "</div>"+
                       " </a>"+
                    "</div>"+
                "</div>");
						 

				$("#result").append(card);	
				num++;
			}
			
		})
	})
	
	
})
