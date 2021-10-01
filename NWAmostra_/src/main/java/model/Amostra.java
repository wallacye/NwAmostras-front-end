package model;

import java.time.LocalDateTime;


@jakarta.servlet.annotation.WebServlet(name = "cliente", urlPatterns = {"/cliente"})
public class Amostra extends jakarta.servlet.http.HttpServlet {
    	
    	private Integer id_amostra;
    	private String coletador_amostra;						
    	private String anotacoes_amostra;
    	private String tipo_amostra;
    	private Integer id_categoria;
    	private Integer id_origem;
    	private LocalDateTime data_inativacao_amostra;
    	
		public int getId_amostra() {
			return id_amostra;
		}
		public void setId_amostra(int id_amostra) {
			this.id_amostra = id_amostra;
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
		public int getId_categoria() {
			return id_categoria;
		}
		public void setId_categoria(int id_categoria) {
			this.id_categoria = id_categoria;
		}
		public int getId_origem() {
			return id_origem;
		}
		public void setId_origem(int id_origem) {
			this.id_origem = id_origem;
		}
		public LocalDateTime getData_inativacao_amostra() {
			return data_inativacao_amostra;
		}
		public void setData_inativacao_amostra(LocalDateTime data_inativacao_amostra) {
			this.data_inativacao_amostra = data_inativacao_amostra;
		}

}
