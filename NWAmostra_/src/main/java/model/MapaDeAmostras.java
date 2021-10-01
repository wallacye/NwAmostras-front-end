package model;

import java.time.LocalDateTime;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet("/MapaDeAmostras")
public class MapaDeAmostras extends HttpServlet {
	
	private Integer id_mapa_amostra;
	private String estante_mapa_amostra;
	private String nome_mapa_amostra;
	private String freezer_mapa_amostra;
	private String caixa_mapa_amostra;
	private Integer n_coluna_mapa_amostra;
	private Integer n_linha_mapa_amostra;
	private Integer id_pesq;
	private LocalDateTime data_inativacao_mapa_amostra;
	
	public LocalDateTime getData_inativacao_mapa_amostra() {
		return data_inativacao_mapa_amostra;
	}
	public void setData_inativacao_mapa_amostra(LocalDateTime data_inativacao_mapa_amostra) {
		this.data_inativacao_mapa_amostra = data_inativacao_mapa_amostra;
	}
	public Integer getId_pesq() {
		return id_pesq;
	}
	public void setId_pesq(Integer id_pesq) {
		this.id_pesq = id_pesq;
	}
	public Integer getN_linha_mapa_amostra() {
		return n_linha_mapa_amostra;
	}
	public void setN_linha_mapa_amostra(Integer n_linha_mapa_amostra) {
		this.n_linha_mapa_amostra = n_linha_mapa_amostra;
	}
	public Integer getN_coluna_mapa_amostra() {
		return n_coluna_mapa_amostra;
	}
	public void setN_coluna_mapa_amostra(Integer n_coluna_mapa_amostra) {
		this.n_coluna_mapa_amostra = n_coluna_mapa_amostra;
	}
	public String getCaixa_mapa_amostra() {
		return caixa_mapa_amostra;
	}
	public void setCaixa_mapa_amostra(String caixa_mapa_amostra) {
		this.caixa_mapa_amostra = caixa_mapa_amostra;
	}
	public String getFreezer_mapa_amostra() {
		return freezer_mapa_amostra;
	}
	public void setFreezer_mapa_amostra(String freezer_mapa_amostra) {
		this.freezer_mapa_amostra = freezer_mapa_amostra;
	}
	public Integer getId_mapa_amostra() {
		return id_mapa_amostra;
	}
	public void setId_mapa_amostra(Integer id_mapa_amostra) {
		this.id_mapa_amostra = id_mapa_amostra;
	}
	public String getEstante_mapa_amostra() {
		return estante_mapa_amostra;
	}
	public void setEstante_mapa_amostra(String estante_mapa_amostra) {
		this.estante_mapa_amostra = estante_mapa_amostra;
	}
	public String getNome_mapa_amostra() {
		return nome_mapa_amostra;
	}
	public void setNome_mapa_amostra(String nome_mapa_amostra) {
		this.nome_mapa_amostra = nome_mapa_amostra;
	}

}
