package model;

public class Prodotto {
	
	public Prodotto(int id, String n, String d, String p, double pr, double vm) {
		idProdotto = id;
		nome = n;
		descrizione = d;
		piattaforma = p;
		prezzo = pr;
		votoMedio = vm;
	}
	
	
	public int getIdProdotto() {
		return idProdotto;
	}
	public void setIdProdotto(int idProdotto) {
		this.idProdotto = idProdotto;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public String getPiattaforma() {
		return piattaforma;
	}
	public void setPiattaforma(String piattaforma) {
		this.piattaforma = piattaforma;
	}
	public double getPrezzo() {
		return prezzo;
	}
	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}
	public double getVotoMedio() {
		return votoMedio;
	}
	public void setVotoMedio(double votoMedio) {
		this.votoMedio = votoMedio;
	}
	
	int idProdotto;
	String nome;
	String descrizione;
	String piattaforma;
	double prezzo;
	double votoMedio;
}
