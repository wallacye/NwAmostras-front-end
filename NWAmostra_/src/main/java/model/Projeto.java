package model;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/Projeto")
public class Projeto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Integer id_projeto;
	private String dt_termino_projeto;
	private String nome_projeto;
	private String dt_inicio_projeto;
	private Integer privado_publico_projeto;
	private String pesquisador_chefe;

	
	public Integer getId_projeto() {
		return id_projeto;
	}
	public void setId_projeto(Integer id_projeto) {
		this.id_projeto = id_projeto;
	}
	public String getNome_projeto() {
		return nome_projeto;
	}
	public void setNome_projeto(String nome_projeto) {
		this.nome_projeto = nome_projeto;
	}
	public Integer getPrivado_publico_projeto() {
		return privado_publico_projeto;
	}
	public void setPrivado_publico_projeto(Integer privado_publico_projeto) {
		this.privado_publico_projeto = privado_publico_projeto;
	}
	public String getDt_termino_projeto() {
		return dt_termino_projeto;
	}
	public void setDt_termino_projeto(String dt_termino_projeto) {
		this.dt_termino_projeto = dt_termino_projeto;
	}
	public String getDt_inicio_projeto() {
		return dt_inicio_projeto;
	}
	public void setDt_inicio_projeto(String dt_inicio_projeto) {
		this.dt_inicio_projeto = dt_inicio_projeto;
	}
	public String getPesquisador_chefe() {
		return pesquisador_chefe;
	}
	public void setPesquisador_chefe(String pesquisador_chefe) {
		this.pesquisador_chefe = pesquisador_chefe;
	}

}
