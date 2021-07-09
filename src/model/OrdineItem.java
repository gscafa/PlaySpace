package model;

public class OrdineItem {
	
	public OrdineItem(int i,String n, String p, double pr, int q, String path) {
		id = i;
		nome = n;
		piattaforma = p;
		prezzo = pr;
		quantita = q;
		this.path = path;
	}
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
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
	public int getQuantita() {
		return quantita;
	}
	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}


	public String getPath() {
		return path;
	}



	public void setPath(String path) {
		this.path = path;
	}

	int id;
	String nome;
	String piattaforma;
	double prezzo;
	int quantita;
	String path;
}
