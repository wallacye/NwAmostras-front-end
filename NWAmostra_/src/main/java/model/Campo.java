package model;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/Campo")
public class Campo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public Integer getId_campo() {
		return id_campo;
	}
	public void setId_campo(Integer id_campo) {
		this.id_campo = id_campo;
	}
	public String getNome_campo() {
		return nome_campo;
	}
	public void setNome_campo(String nome_campo) {
		this.nome_campo = nome_campo;
	}
	public Integer getId_projeto() {
		return id_projeto;
	}
	public void setId_projeto(Integer id_projeto) {
		this.id_projeto = id_projeto;
	}
	public Integer getColuna_campo() {
		return coluna_campo;
	}
	public void setColuna_campo(Integer coluna_campo) {
		this.coluna_campo = coluna_campo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private Integer id_campo;
	private String nome_campo;
	private Integer id_projeto;
	private Integer coluna_campo;

}
