package model;

import java.sql.Date;
import java.sql.Time;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/AmostraNoMapa")
public class AmostraNoMapa extends HttpServlet {

	private Integer id_amostra_mapa;
	private Integer id_div_mapa_amostra;
	private Integer n_coluna_amostra;
	private Integer n_linha_amostra;
	private Date validade_amostra;
	private Date dt_coleta_amostra;
	private Double volume_amostra;
	private Time hora_coleta_amostra;
	private Integer id_amostra;
	private Integer id_mapa_amostra;
	
	public Integer getId_amostra_mapa() {
		return id_amostra_mapa;
	}
	public void setId_amostra_mapa(Integer id_amostra_mapa) {
		this.id_amostra_mapa = id_amostra_mapa;
	}
	public Integer getId_div_mapa_amostra() {
		return id_div_mapa_amostra;
	}
	public void setId_div_mapa_amostra(Integer id_div_mapa_amostra) {
		this.id_div_mapa_amostra = id_div_mapa_amostra;
	}
	public Integer getN_coluna_amostra() {
		return n_coluna_amostra;
	}
	public void setN_coluna_amostra(Integer n_coluna_amostra) {
		this.n_coluna_amostra = n_coluna_amostra;
	}
	public Integer getN_linha_amostra() {
		return n_linha_amostra;
	}
	public void setN_linha_amostra(Integer n_linha_amostra) {
		this.n_linha_amostra = n_linha_amostra;
	}
	public Date getValidade_amostra() {
		return validade_amostra;
	}
	public void setValidade_amostra(Date validade_amostra) {
		this.validade_amostra = validade_amostra;
	}
	public Date getDt_coleta_amostra() {
		return dt_coleta_amostra;
	}
	public void setDt_coleta_amostra(Date dt_coleta_amostra) {
		this.dt_coleta_amostra = dt_coleta_amostra;
	}
	public Time getHora_coleta_amostra() {
		return hora_coleta_amostra;
	}
	public void setHora_coleta_amostra(Time hora_coleta_amostra) {
		this.hora_coleta_amostra = hora_coleta_amostra;
	}
	public Double getVolume_amostra() {
		return volume_amostra;
	}
	public void setVolume_amostra(Double volume_amostra) {
		this.volume_amostra = volume_amostra;
	}
	public Integer getId_amostra() {
		return id_amostra;
	}
	public void setId_amostra(Integer id_amostra) {
		this.id_amostra = id_amostra;
	}
	public Integer getId_mapa_amostra() {
		return id_mapa_amostra;
	}
	public void setId_mapa_amostra(Integer id_mapa_amostra) {
		this.id_mapa_amostra = id_mapa_amostra;
	}
	
	
	
	
	
}
