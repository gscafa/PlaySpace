package model;
import java.util.*;

public class Carrello {

	public Carrello() {
		prodotti = new ArrayList<CarrelloItem>();
	}
	
	public void addProdotto(CarrelloItem c) {
		boolean check = false;
		for(CarrelloItem i : prodotti) {
			if(i.getProdotto().getIdProdotto() == c.getProdotto().getIdProdotto()) {
				i.incQuantita();
				check = true;
			}
		}
		
		if(!check)
			prodotti.add(c);
		
	}
	
	public void removeProdotto(int id) {
		for(CarrelloItem x : prodotti) {
			if(x.prodotto.getIdProdotto() == id)
				prodotti.remove(x);
		}
	}
	ArrayList<CarrelloItem> prodotti;
	
}
