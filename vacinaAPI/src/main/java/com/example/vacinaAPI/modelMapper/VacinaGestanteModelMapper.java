package com.example.vacinaAPI.modelMapper;

import com.example.vacinaAPI.model.VacinaGestanteModel;
import  org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;


public class VacinaGestanteModelMapper implements RowMapper<VacinaGestanteModel>{


    public String mapRowToName(ResultSet rs, int rowNum) throws SQLException {
        return rs.getString("nome_vacina");
    }


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
