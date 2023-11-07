package com.example.vacinaAPI.modelMapper;

import com.example.vacinaAPI.model.VacinaIdosoAdultoModel;
import org.springframework.beans.factory.annotation.Autowired;

import javax.swing.tree.RowMapper;
import javax.xml.transform.Result;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VacinaIdosoAdultoModelMapper {

    //metodo responsavel por fazer a consulta na tabela para retornar somnete os nomes da vacinas,
    //na classe controller é chamado por ::mapRowToName
    public String mapRowToName(ResultSet rs, int rowNum) throws SQLException {
        return rs.getString("nome_vacina");
    }

    //metodo responsavel por retornar todas as informações de uma unica vacina
    public VacinaIdosoAdultoModel mapRow(ResultSet rs, int rowNum) throws SQLException {
        VacinaIdosoAdultoModel vacina = new VacinaIdosoAdultoModel();
        vacina.setNome_vacina(rs.getString("nome_vacina"));
        vacina.setProtecao_contra(rs.getString("protecao_contra"));
        vacina.setComposicao(rs.getString("composicao"));
        vacina.setNum_doses(rs.getString("num_doses"));
        vacina.setIdade_recomendada(rs.getString("idade_recomendada"));
        vacina.setIntervalo_doses(rs.getString("intervalo_doses"));
        return vacina;
    }
}
