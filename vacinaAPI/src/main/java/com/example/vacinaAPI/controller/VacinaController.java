package com.example.vacinaAPI.controller;


import com.example.vacinaAPI.model.VacinaAdolescenteModel;
import com.example.vacinaAPI.model.VacinaCriancasModel;
import com.example.vacinaAPI.model.VacinaGestanteModel;
import com.example.vacinaAPI.model.VacinaIdosoAdultoModel;
import com.example.vacinaAPI.modelMapper.VacinaAdolescenteModelMapper;
import com.example.vacinaAPI.modelMapper.VacinaCriancasModelMapper;
import com.example.vacinaAPI.modelMapper.VacinaGestanteModelMapper;
import com.example.vacinaAPI.modelMapper.VacinaIdosoAdultoModelMapper;
import com.example.vacinaAPI.repository.VacinaGestanteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/vacinas")
public class VacinaController {

    @Autowired
    private JdbcTemplate jdbc;
    //implementação da JdbcTemplate, é o que ira executar os códigos SQL


    //metodo que irá retornar somente os nomes das vacinas para gestante
    @GetMapping("/gestante")
    public List<String> getAllNamesGestante() {
        String sql = "SELECT nome_vacina FROM vacina_gestante";
        return jdbc.query(sql, new VacinaGestanteModelMapper()::mapRowToName);
    }

    //metodo que irá retornar todas as informações da vacina requisitada pelo id
    @GetMapping("/gestante/{id}")
    public VacinaGestanteModel getAllInfosGestante(@PathVariable ("id") Integer id) {
        String sql = "SELECT * FROM vacina_gestante WHERE id_VacinaGestante = ?";
        List<VacinaGestanteModel> vacinas = jdbc.query(sql, new Object[]{id}, new VacinaGestanteModelMapper());
        if (vacinas.isEmpty()) {
            return null;
        } else {
            return vacinas.get(0);
        }
    }

    //metodo que irá retornar somente os nomes das vacinas para idoso/adulto
    @GetMapping("/idoso-adulto")
    public List<String> getAllNamesIdosoAdulto(){
        String sql = "SELECT nome_vacina FROM  vacina_idosoadulto";
        return jdbc.query(sql, new VacinaIdosoAdultoModelMapper()::mapRowToName);
    }

    //metodo que irá retornar todas as informações da vacina requisitada pelo id
    @GetMapping("/idoso-adulto/{id}")
    public VacinaIdosoAdultoModel getAllInfosIdosoAdulto(@PathVariable ("id") Integer id) {
        String sql = "SELECT * FROM vacina_idosoadulto WHERE id_vacinaIdosoAdulto = ?";
        List<VacinaIdosoAdultoModel> vacinas = jdbc.query(sql, new Object[]{id}, new VacinaIdosoAdultoModelMapper()::mapRow);
        if (vacinas.isEmpty()) {
            return null;
        } else {
            return vacinas.get(0);
        }
    }

    //metodo que irá retornar somente os nomes das vacinas para criancas
    @GetMapping("/criancas")
    public List<String> getAllNamesCriancas(){
        String sql = "SELECT nome_vacina FROM vacina_criancas";
        return jdbc.query(sql, new VacinaCriancasModelMapper()::mapRowToName);
    }

    //metodo que irá retornar todas as informações da vacina requisitada pelo id
    @GetMapping("/criancas/{id}")
    public VacinaCriancasModel getAllInfosCriancas(@PathVariable ("id") Integer id){
        String sql = "SELECT * FROM vacina_criancas WHERE id_vacinaCriancas = ?";
        List<VacinaCriancasModel> vacinas = jdbc.query(sql, new Object[]{id}, new VacinaCriancasModelMapper()::mapRow);
        if (vacinas.isEmpty()){
            return null;
        } else {
            return vacinas.get(0);
        }
    }

    //metodo que irá retornar somente os nomes das vacinas para adolescentes
    @GetMapping("/adolescente")
    public List<String> getAllNamesAdolescente(){
        String sql = "SELECT nome_vacina FROM vacina_adolescente";
        return jdbc.query(sql, new VacinaAdolescenteModelMapper()::mapRowToName);
    }

    //metodo que irá retornar todas as informações da vacina requisitada pelo id
    @GetMapping("/adolescente/{id}")
    public VacinaAdolescenteModel getallInfosAdolescente(@PathVariable ("id") Integer id){
        String sql = "SELECT * FROM vacina_adolescente WHERE id_vacinaAdolescente = ?";
        List<VacinaAdolescenteModel> vacinas = jdbc.query(sql, new Object[]{id}, new VacinaAdolescenteModelMapper()::mapRow);
        if (vacinas.isEmpty()){
            return null;
        } else {
            return vacinas.get(0);
        }
    }
}
