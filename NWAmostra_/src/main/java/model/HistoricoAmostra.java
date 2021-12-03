package model;

import java.sql.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/HistoricoAmostra")
public class HistoricoAmostra extends HttpServlet {
	
	private Integer id_hist_amostra;
	private Double quant_hist_amostra;
	private Date dt_hist_amostra;
	private String dt_hist_amostra_formatada;
	private Integer id_amostra;
	private Integer id_pesq;
	private String nome_pesq;
	private String adicionou_retirou;
	
	public Integer getId_hist_amostra() {
		return id_hist_amostra;
	}
	public void setId_hist_amostra(Integer id_hist_amostra) {
		this.id_hist_amostra = id_hist_amostra;
	}
	public Double getQuant_hist_amostra() {
		return quant_hist_amostra;
	}
	public void setQuant_hist_amostra(Double quant_hist_amostra) {
		this.quant_hist_amostra = quant_hist_amostra;
	}
	public Date getDt_hist_amostra() {
		return dt_hist_amostra;
	}
	public void setDt_hist_amostra(Date dt_hist_amostra) {
		this.dt_hist_amostra = dt_hist_amostra;
	}
	public Integer getId_amostra() {
		return id_amostra;
	}
	public void setId_amostra(Integer id_amostra) {
		this.id_amostra = id_amostra;
	}
	public Integer getId_pesq() {
		return id_pesq;
	}
	public void setId_pesq(Integer id_pesq) {
		this.id_pesq = id_pesq;
	}
	public String getNome_pesq() {
		return nome_pesq;
	}
	public void setNome_pesq(String nome_pesq) {
		this.nome_pesq = nome_pesq;
	}
	public String getAdicionou_retirou() {
		return adicionou_retirou;
	}
	public void setAdicionou_retirou(String adicionou_retirou) {
		this.adicionou_retirou = adicionou_retirou;
	}
	public String getDt_hist_amostra_formatada() {
		return dt_hist_amostra_formatada;
	}
	public void setDt_hist_amostra_formatada(String dt_hist_amostra_formatada) {
		this.dt_hist_amostra_formatada = dt_hist_amostra_formatada;
	}
	
}
