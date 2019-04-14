package domain;

import java.sql.Timestamp;

public class Locacao {
	
	private int codLocacao;
	private int codCliente;
	private int codFilme;
	private Timestamp dtRetirada;
	private Timestamp dtDevolucao;
	
	public Locacao() {
		super();
	}
	public int getCodLocacao() {
		return codLocacao;
	}
	public void setCodLocacao(int codLocacao) {
		this.codLocacao = codLocacao;
	}
	public int getCodCliente() {
		return codCliente;
	}
	public void setCodCliente(int codCliente) {
		this.codCliente = codCliente;
	}
	public int getCodFilme() {
		return codFilme;
	}
	public void setCodFilme(int codFilme) {
		this.codFilme = codFilme;
	}
	public Timestamp getDtRetirada() {
		return dtRetirada;
	}
	public void setDtRetirada(Timestamp dtRetirada) {
		this.dtRetirada = dtRetirada;
	}
	public Timestamp getDtDevolucao() {
		return dtDevolucao;
	}
	public void setDtDevolucao(Timestamp dtDevolucao) {
		this.dtDevolucao = dtDevolucao;
	}

}
