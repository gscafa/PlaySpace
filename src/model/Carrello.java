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
				i.incQuantita(c.getQuantita());
				check = true;
			}
		}
		
		if(!check)
			prodotti.add(c);
		
	}
	public ArrayList<CarrelloItem> getProdotti(){
		return prodotti;
	}
	
	public void removeProdotto(int id) {
		for(CarrelloItem x : prodotti) {
			if(x.getProdotto().getIdProdotto() == id) {
				prodotti.remove(x);
				break;}
		}
	}
	
	public double getTotal() {
		double t=0;
		for(CarrelloItem i: prodotti) {
			t+=(i.getQuantita() * i.getProdotto().getPrezzo());
		}
		return t;
	}
	
	public int getTotalQuantity() {
		if(this.isEmpty()) return 0;
		int q=0;
		for(CarrelloItem i : prodotti) {
			q+=i.getQuantita();
		}
		return q;
	}
	
	public boolean isEmpty() {
		if(prodotti.size()==0)
			return true;
		else return false;
	}
	
	public void empty() {
		for(CarrelloItem i: prodotti) {
			prodotti.remove(i);
		}
	}
	ArrayList<CarrelloItem> prodotti;
	
}
