package model;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/Origem")
public class Origem extends HttpServlet {

	private String nome_origem;
	private Integer id_origem;
	private String endereco_origem;
	
	public Integer getId_origem() {
		return id_origem;
	}
	public void setId_origem(Integer id_origem) {
		this.id_origem = id_origem;
	}
	public String getEndereco_origem() {
		return endereco_origem;
	}
	public void setEndereco_origem(String endereco_origem) {
		this.endereco_origem = endereco_origem;
	}
	public String getNome_origem() {
		return nome_origem;
	}
	public void setNome_origem(String nome_origem) {
		this.nome_origem = nome_origem;
	}
}
