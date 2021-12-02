package model;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/Instituicao")
public class Instituicao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Integer id_lab;
	private String telefone_lab;
	private char cnpj_lab;
	private String nome_lab;
	private String data_inativacao_lab;
	private String endereco_lab;
	
	public Integer getId_lab() {
		return id_lab;
	}
	public void setId_lab(Integer id_lab) {
		this.id_lab = id_lab;
	}
	public String getTelefone_lab() {
		return telefone_lab;
	}
	public void setTelefone_lab(String telefone_lab) {
		this.telefone_lab = telefone_lab;
	}
	public char getCnpj_lab() {
		return cnpj_lab;
	}
	public void setCnpj_lab(char cnpj_lab) {
		this.cnpj_lab = cnpj_lab;
	}
	public String getNome_lab() {
		return nome_lab;
	}
	public void setNome_lab(String nome_lab) {
		this.nome_lab = nome_lab;
	}
	public String getData_inativacao_lab() {
		return data_inativacao_lab;
	}
	public void setData_inativacao_lab(String data_inativacao_lab) {
		this.data_inativacao_lab = data_inativacao_lab;
	}
	public String getEndereco_lab() {
		return endereco_lab;
	}
	public void setEndereco_lab(String endereco_lab) {
		this.endereco_lab = endereco_lab;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
