package domain;

import java.math.BigDecimal;

public class Filme {

	private int codFilme;
	private String filme;
	private int codCategoria;
	private String diretor;
	private BigDecimal valorLocacao;
	private boolean reservado;
	
	public Filme() {
		super();
	}
	public int getCodFilme() {
		return codFilme;
	}
	public void setCodFilme(int codFilme) {
		this.codFilme = codFilme;
	}
	public String getFilme() {
		return filme;
	}
	public void setFilme(String filme) {
		this.filme = filme;
	}
	public int getCodCategoria() {
		return codCategoria;
	}
	public void setCodCategoria(int codCategoria) {
		this.codCategoria = codCategoria;
	}
	public String getDiretor() {
		return diretor;
	}
	public void setDiretor(String diretor) {
		this.diretor = diretor;
	}
	public BigDecimal getValorLocacao() {
		return valorLocacao;
	}
	public void setValorLocacao(BigDecimal valorLocacao) {
		this.valorLocacao = valorLocacao;
	}
	public boolean isReservado() {
		return reservado;
	}
	public void setReservado(boolean reservado) {
		this.reservado = reservado;
	}

}
