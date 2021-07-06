package model;
import java.util.*;

public class Carrello {

	public Carrello() {
		prodotti = new ArrayList<CarrelloItem>();
	}
	
	void addProdotto(CarrelloItem c) {
		prodotti.add(c);
	}
	
	void removeProdotto(int id) {
		for(CarrelloItem x : prodotti) {
			if(x.prodotto.getIdProdotto() == id)
				prodotti.remove(x);
		}
	}
	ArrayList<CarrelloItem> prodotti;
	
}
