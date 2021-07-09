package model;
import java.time.LocalDate;
import java.util.*;

public class Ordine {
	
	public Ordine(int id, String d, ArrayList<OrdineItem> a, double t) {
		prodotti = a;
		data = LocalDate.parse(d);
		idOrdine = id;
		totale = t;
	}
	
	public Ordine(int id, String d, double t) {
		data = LocalDate.parse(d);
		idOrdine = id;
		totale = t;
	}
	
	
	public Ordine () {
		idOrdine = MaxOrdine.getMaxOrdine() + 1;
		prodotti = new ArrayList<OrdineItem>();
		data = LocalDate.now();
	}
	
	public double getTotale() {
		return totale;
	}

	public void setTotale(double totale) {
		this.totale = totale;
	}

	
	public ArrayList<OrdineItem> getProdotti() {
		return prodotti;
	}

	public void setProdotti(ArrayList<OrdineItem> prodotti) {
		this.prodotti = prodotti;
	}

	public int getIdOrdine() {
		return idOrdine;
	}

	public void setIdOrdine(int idOrdine) {
		this.idOrdine = idOrdine;
	}

	public LocalDate getData() {
		return data;
	}

	public void setData(LocalDate data) {
		this.data = data;
	}
	
	public void addProdotto(OrdineItem c) {
		prodotti.add(c);
	}
	
	public void carrelloToOrdine(Carrello c){
		ArrayList<CarrelloItem> a = c.getProdotti();
		totale = c.getTotal();
		OrdineItem temp;
		Prodotto ptemp;
		int id;
		int k=1;
		String path;
		for(CarrelloItem i : a) {
			
			ptemp = i.getProdotto();
			id = MaxPOrdine.getMaxPOrdine() +k;
			path = "assets/img/prodotti/"+ptemp.getIdProdotto()+".jpg";
			temp = new OrdineItem(id,ptemp.getNome(),ptemp.getPiattaforma(),ptemp.getPrezzo(),i.getQuantita(),path);
			prodotti.add(temp);
			k++;
		}
	}

	ArrayList<OrdineItem> prodotti;
	int idOrdine;
	LocalDate data;
	double totale;
}
