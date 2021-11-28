package model;

import java.sql.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/Projeto")
public class Projeto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Integer id_projeto;
	private Date dt_termino_projeto;
	private String nome_projeto;
	private Date dt_inicio_projeto;
	private Integer privado_publico_projeto;
	
	public Date getDt_inicio_projeto() {
		return dt_inicio_projeto;
	}
	public void setDt_inicio_projeto(Date dt_inicio_projeto) {
		this.dt_inicio_projeto = dt_inicio_projeto;
	}
	public Integer getId_projeto() {
		return id_projeto;
	}
	public void setId_projeto(Integer id_projeto) {
		this.id_projeto = id_projeto;
	}
	public Date getDt_termino_projeto() {
		return dt_termino_projeto;
	}
	public void setDt_termino_projeto(Date dt_termino_projeto) {
		this.dt_termino_projeto = dt_termino_projeto;
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

}
