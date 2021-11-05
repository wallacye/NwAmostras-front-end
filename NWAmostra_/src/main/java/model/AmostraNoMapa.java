package model;

import java.sql.Date;
import java.sql.Time;
import java.time.LocalDateTime;

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
	private String data_formatada_vencimento;

	private String estante_mapa_amostra;
	private String nome_mapa_amostra;
	private String freezer_mapa_amostra;
	private String caixa_mapa_amostra;
	private Integer n_coluna_mapa_amostra;
	private Integer n_linha_mapa_amostra;
	private Date data_inativacao_mapa_amostra;
	private Date data_mapa_amostra;
	private String data_mapa_amostra_formatada;

	private String coletador_amostra;
	private String anotacoes_amostra;
	private String tipo_amostra;
	private Integer id_categoria;
	private Integer id_origem;
	private LocalDateTime data_inativacao_amostra;
	private String nome_amostra;
	private String nome_categoria;

	private String nome_origem;
	
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
	public String getData_formatada_vencimento() {
		return data_formatada_vencimento;
	}
	public void setData_formatada_vencimento(String data_formatada_vencimento) {
		this.data_formatada_vencimento = data_formatada_vencimento;
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
	public String getFreezer_mapa_amostra() {
		return freezer_mapa_amostra;
	}
	public void setFreezer_mapa_amostra(String freezer_mapa_amostra) {
		this.freezer_mapa_amostra = freezer_mapa_amostra;
	}
	public String getCaixa_mapa_amostra() {
		return caixa_mapa_amostra;
	}
	public void setCaixa_mapa_amostra(String caixa_mapa_amostra) {
		this.caixa_mapa_amostra = caixa_mapa_amostra;
	}
	public Integer getN_coluna_mapa_amostra() {
		return n_coluna_mapa_amostra;
	}
	public void setN_coluna_mapa_amostra(Integer n_coluna_mapa_amostra) {
		this.n_coluna_mapa_amostra = n_coluna_mapa_amostra;
	}
	public Integer getN_linha_mapa_amostra() {
		return n_linha_mapa_amostra;
	}
	public void setN_linha_mapa_amostra(Integer n_linha_mapa_amostra) {
		this.n_linha_mapa_amostra = n_linha_mapa_amostra;
	}
	public Date getData_inativacao_mapa_amostra() {
		return data_inativacao_mapa_amostra;
	}
	public void setData_inativacao_mapa_amostra(Date data_inativacao_mapa_amostra) {
		this.data_inativacao_mapa_amostra = data_inativacao_mapa_amostra;
	}
	public Date getData_mapa_amostra() {
		return data_mapa_amostra;
	}
	public void setData_mapa_amostra(Date data_mapa_amostra) {
		this.data_mapa_amostra = data_mapa_amostra;
	}
	public String getData_mapa_amostra_formatada() {
		return data_mapa_amostra_formatada;
	}
	public void setData_mapa_amostra_formatada(String data_mapa_amostra_formatada) {
		this.data_mapa_amostra_formatada = data_mapa_amostra_formatada;
	}
	public String getColetador_amostra() {
		return coletador_amostra;
	}
	public void setColetador_amostra(String coletador_amostra) {
		this.coletador_amostra = coletador_amostra;
	}
	public String getAnotacoes_amostra() {
		return anotacoes_amostra;
	}
	public void setAnotacoes_amostra(String anotacoes_amostra) {
		this.anotacoes_amostra = anotacoes_amostra;
	}
	public String getTipo_amostra() {
		return tipo_amostra;
	}
	public void setTipo_amostra(String tipo_amostra) {
		this.tipo_amostra = tipo_amostra;
	}
	public Integer getId_categoria() {
		return id_categoria;
	}
	public void setId_categoria(Integer id_categoria) {
		this.id_categoria = id_categoria;
	}
	public Integer getId_origem() {
		return id_origem;
	}
	public void setId_origem(Integer id_origem) {
		this.id_origem = id_origem;
	}
	public LocalDateTime getData_inativacao_amostra() {
		return data_inativacao_amostra;
	}
	public void setData_inativacao_amostra(LocalDateTime data_inativacao_amostra) {
		this.data_inativacao_amostra = data_inativacao_amostra;
	}
	public String getNome_amostra() {
		return nome_amostra;
	}
	public void setNome_amostra(String nome_amostra) {
		this.nome_amostra = nome_amostra;
	}
	public String getNome_categoria() {
		return nome_categoria;
	}
	public void setNome_categoria(String nome_categoria) {
		this.nome_categoria = nome_categoria;
	}
	public String getNome_origem() {
		return nome_origem;
	}
	public void setNome_origem(String nome_origem) {
		this.nome_origem = nome_origem;
	}	
}
