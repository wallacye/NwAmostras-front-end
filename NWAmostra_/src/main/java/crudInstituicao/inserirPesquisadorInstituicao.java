package crudInstituicao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conexao.Conexao;

@WebServlet("/inserirPesquisadorInstituicao")
public class inserirPesquisadorInstituicao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
        try {
        	Integer id_lab = Integer.parseInt(request.getParameter("txtIdlab"));
        	String pesquisadores = request.getParameter("inputAdicionarPesqLab");
        	
        	List<String> listaPesquisadores = Arrays.asList(pesquisadores.split(","));
        	
        	Integer rodar = 0;
            
            Connection con = Conexao.Conectar();  

    	    while(rodar < listaPesquisadores.size()) 
    	    {    	
                String sqlExibirPesquisadores = "SELECT * FROM pesquisador WHERE email_pesq= '" +listaPesquisadores.get(rodar)+ "'";
                
                Statement stExibirPesquisadores = con.createStatement();
                ResultSet rsExibirPesquisadores = stExibirPesquisadores.executeQuery(sqlExibirPesquisadores);
                
                if ( rsExibirPesquisadores.next() )
                {                             	         	
                	int id_pesq = rsExibirPesquisadores.getInt("id_pesq");
                	         	    
                    String sqlInserirPesqNoLab = "INSERT INTO lab_pesq_possui (id_lab, id_pesq, cargo)"
                    + "VALUES (?, ?, ?)";
                	    	
                	PreparedStatement stInserirPesqNoLab = con.prepareStatement(sqlInserirPesqNoLab);
                	stInserirPesqNoLab.setInt(1, id_lab);
                	stInserirPesqNoLab.setInt(2, id_pesq);
                	stInserirPesqNoLab.setInt(3, 0);
                	stInserirPesqNoLab.executeUpdate();
                	
                	String sqlInserirIdLabNoPesq = "UPDATE pesquisador SET id_lab = (?)";
                        	    	
                        	PreparedStatement stInserirIdLabNoPesq = con.prepareStatement(sqlInserirIdLabNoPesq);
                        	stInserirIdLabNoPesq.setInt(1, id_lab);
                        	stInserirIdLabNoPesq.executeUpdate();
                }
        	    rodar++;                                    	
        	    response.sendRedirect("./jsp/jspLogado/laboratorio.jsp");
    	    }}catch (SQLException ex) 
        {
            out.print("Erro na conexão, inserir pesquisador no laboratorio: " + ex);
       } 
	} }
