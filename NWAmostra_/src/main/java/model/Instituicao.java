package model;

import java.sql.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/Instituicao")
public class Instituicao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Integer id_lab;
	private String telefone_lab;
	private String cnpj_lab;
	private String nome_lab;
	private Date data_inativacao_lab;
	private String endereco_lab;
	
	private Integer id_lab_pesq_possui ;
	private Integer cargo;
	private String rua_instituicao;
	private String numero_instituicao;
	private String complemento_instituicao;
	private String bairro_instituicao;
	private String cep_instituicao;
	
	
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
	public String getCnpj_lab() {
		return cnpj_lab;
	}
	public void setCnpj_lab(String cnpj_lab) {
		this.cnpj_lab = cnpj_lab;
	}
	public String getNome_lab() {
		return nome_lab;
	}
	public void setNome_lab(String nome_lab) {
		this.nome_lab = nome_lab;
	}
	public Date getData_inativacao_lab() {
		return data_inativacao_lab;
	}
	public void setData_inativacao_lab(Date data_inativacao_lab) {
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
	public Integer getId_lab_pesq_possui() {
		return id_lab_pesq_possui;
	}
	public void setId_lab_pesq_possui(Integer id_lab_pesq_possui) {
		this.id_lab_pesq_possui = id_lab_pesq_possui;
	}
	public Integer getCargo() {
		return cargo;
	}
	public void setCargo(Integer cargo) {
		this.cargo = cargo;
	}
	public String getRua_instituicao() {
		return rua_instituicao;
	}
	public void setRua_instituicao(String rua_instituicao) {
		this.rua_instituicao = rua_instituicao;
	}
	public String getNumero_instituicao() {
		return numero_instituicao;
	}
	public void setNumero_instituicao(String numero_instituicao) {
		this.numero_instituicao = numero_instituicao;
	}
	public String getComplemento_instituicao() {
		return complemento_instituicao;
	}
	public void setComplemento_instituicao(String complemento_instituicao) {
		this.complemento_instituicao = complemento_instituicao;
	}
	public String getBairro_instituicao() {
		return bairro_instituicao;
	}
	public void setBairro_instituicao(String bairro_instituicao) {
		this.bairro_instituicao = bairro_instituicao;
	}
	public String getCep_instituicao() {
		return cep_instituicao;
	}
	public void setCep_instituicao(String cep_instituicao) {
		this.cep_instituicao = cep_instituicao;
	}
}

