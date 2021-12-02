package model;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/AmostraNoProjeto")
public class AmostraNoProjeto extends HttpServlet {

private Integer id_amostra;
public Integer getId_amostra() {
	return id_amostra;
}
public void setId_amostra(Integer id_amostra) {
	this.id_amostra = id_amostra;
}
public Integer getId_projeto() {
	return id_projeto;
}
public void setId_projeto(Integer id_projeto) {
	this.id_projeto = id_projeto;
}
public Integer getId_amostra_projeto() {
	return id_amostra_projeto;
}
public void setId_amostra_projeto(Integer id_amostra_projeto) {
	this.id_amostra_projeto = id_amostra_projeto;
}
public Integer getLinha_amostra() {
	return linha_amostra;
}
public void setLinha_amostra(Integer linha_amostra) {
	this.linha_amostra = linha_amostra;
}
public String getNome_amostra() {
	return nome_amostra;
}
public void setNome_amostra(String nome_amostra) {
	this.nome_amostra = nome_amostra;
}
private Integer id_projeto;	
private Integer id_amostra_projeto;
private Integer linha_amostra;
private String nome_amostra;
}