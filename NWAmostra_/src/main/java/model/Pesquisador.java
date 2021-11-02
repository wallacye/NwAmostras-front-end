package model;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/Pesquisador")
public class Pesquisador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Integer id_pesq;
	private String senha_pesq;
	private String email_pesq;
	private String nome_pesq;
	private String cpf_pesq;
	private Integer cargo;
	private Integer tema_claro_escuro;

	public Integer getId_pesq() {
		return id_pesq;
	}
	public void setId_pesq(Integer id_pesq) {
		this.id_pesq = id_pesq;
	}
	
	public String getEmail_pesq() {
		return email_pesq;
	}
	public void setEmail_pesq(String email_pesq) {
		this.email_pesq = email_pesq;
	}
	
	public String getNome_pesq() {
		return nome_pesq;
	}
	public void setNome_pesq(String nome_pesq) {
		this.nome_pesq = nome_pesq;
	}
	
	public String getCpf_pesq() {
		return cpf_pesq;
	}
	public void setCpf_pesq(String cpf_pesq) {
		this.cpf_pesq = cpf_pesq;
	}
	
	public String getSenha_pesq() {
		return senha_pesq;
	}
	public void setSenha_pesq(String senha_pesq) {
		this.senha_pesq = senha_pesq;
	}
	
	public Integer getCargo() {
		return cargo;
	}
	public void setCargo(Integer cargo) {
		this.cargo = cargo;
	}
	
	public Integer getTema_claro_escuro() {
		return tema_claro_escuro;
	}
	public void setTema_claro_escuro(Integer tema_claro_escuro) {
		this.tema_claro_escuro = tema_claro_escuro;
	}
}
