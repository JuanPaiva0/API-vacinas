package com.example.vacinaAPI.modelMapper;

import com.example.vacinaAPI.model.VacinaGestanteModel;
import  org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;


public class VacinaGestanteModelMapper implements RowMapper<VacinaGestanteModel>{


    //metodo responsavel por fazer a consulta na tabela para retornar somnete os nomes da vacinas,
    //na classe controller é chamado por ::mapRowToName
    public String mapRowToName(ResultSet rs, int rowNum) throws SQLException {
        return rs.getString("nome_vacina");
    }


    //metodo responsavel por retornar todas as informações de uma unica vacina
    public VacinaGestanteModel mapRow(ResultSet rs, int rowNum) throws SQLException {
        VacinaGestanteModel vacina = new VacinaGestanteModel();
        vacina.setNome_vacina(rs.getString("nome_vacina"));
        vacina.setProtecao_contra(rs.getString("protecao_contra"));
        vacina.setComposicao(rs.getString("composicao"));
        vacina.setNum_doses(rs.getString("num_doses"));
        vacina.setIdade_recomendada(rs.getString("idade_recomendada"));
        vacina.setIntervalo_doses(rs.getString("intervalo_doses"));
        return vacina;
    }
}
