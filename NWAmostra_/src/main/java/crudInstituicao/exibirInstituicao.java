package crudInstituicao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import conexao.Conexao;
import model.AmostraNoMapa;
import model.Instituicao;
import model.MapaDeAmostras;

@WebServlet("/exibirInstituicao")
public class exibirInstituicao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
public ArrayList<Instituicao> listar(Integer id_mapa_amostra){
        
        ArrayList<Instituicao> ConteudoInstituicao = new ArrayList<Instituicao>();
        
        return null;
    }


}
