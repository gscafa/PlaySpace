package model;

public class CarrelloItem {

	public CarrelloItem(Prodotto p, int q){
		prodotto = p;
		quantita = q;
	}
	
	
	public Prodotto getProdotto() {
		return prodotto;
	}
	public void setProdotto(Prodotto prodotto) {
		this.prodotto = prodotto;
	}
	public int getQuantita() {
		return quantita;
	}
	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}

	public void incQuantita(int q) {
		quantita+=q;
	}
	
	
	
	
	public void decQuantita() {
		if(quantita>0)
		quantita--;
	}
	Prodotto prodotto;
	int quantita;
}
