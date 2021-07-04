package model;
import java.util.*;

public class Carrello {

	public Carrello() {
		prodotti = new ArrayList<Prodotto>();
	}
	
	public int getQuantitybyId(int id) {
		int count=0;
		
		for(Prodotto i: prodotti) {
			if(i.getIdProdotto() == id)
				count++;
		}
		return count;
	}
	
	public void addProdotto(Prodotto p) {
		prodotti.add(p);
	}
	
	public void removeProdottobyId(int id) {
		
		for(int i = 0; i<prodotti.size();i++) {
			
			if(prodotti.get(i).getIdProdotto() == id )
				prodotti.remove(i);
		}
	}
	ArrayList<Prodotto> prodotti;
	
}
