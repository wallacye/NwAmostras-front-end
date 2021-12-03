package model;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/Informacao")
public class Informacao extends HttpServlet {

	public Integer getId_informacao() {
		return id_informacao;
	}
	public void setId_informacao(Integer id_informacao) {
		this.id_informacao = id_informacao;
	}
	public String getConteudo_informacao() {
		return conteudo_informacao;
	}
	public void setConteudo_informacao(String conteudo_informacao) {
		this.conteudo_informacao = conteudo_informacao;
	}
	public Integer getId_campo() {
		return id_campo;
	}
	public void setId_campo(Integer id_campo) {
		this.id_campo = id_campo;
	}
	public Integer getId_amostra_projeto() {
		return id_amostra_projeto;
	}
	public void setId_amostra_projeto(Integer id_amostra_projeto) {
		this.id_amostra_projeto = id_amostra_projeto;
	}
	private Integer id_informacao;
	private String conteudo_informacao;
	private Integer id_amostra_projeto ;
	private Integer id_campo;
	public Integer getColuna_campo() {
		return coluna_campo;
	}
	public void setColuna_campo(Integer coluna_campo) {
		this.coluna_campo = coluna_campo;
	}
	public Integer getLinha_amostra() {
		return linha_amostra;
	}
	public void setLinha_amostra(Integer linha_amostra) {
		this.linha_amostra = linha_amostra;
	}
	private Integer coluna_campo;
	private Integer linha_amostra;
	
}
