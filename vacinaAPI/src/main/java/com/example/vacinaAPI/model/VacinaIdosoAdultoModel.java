package com.example.vacinaAPI.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class VacinaIdosoAdultoModel {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id_VacinaGestante;
    private String nome_vacina;
    private String protecao_contra;
    private String composicao;
    private String num_doses;
    private String idade_recomendada;
    private String intervalo_doses;

    public Integer getId_VacinaGestante() {
        return id_VacinaGestante;
    }

    public void setId_VacinaGestante(Integer id_VacinaGestante) {
        this.id_VacinaGestante = id_VacinaGestante;
    }

    public String getNome_vacina() {
        return nome_vacina;
    }

    public void setNome_vacina(String nome_vacina) {
        this.nome_vacina = nome_vacina;
    }

    public String getProtecao_contra() {
        return protecao_contra;
    }

    public void setProtecao_contra(String protecao_contra) {
        this.protecao_contra = protecao_contra;
    }

    public String getComposicao() {
        return composicao;
    }

    public void setComposicao(String composicao) {
        this.composicao = composicao;
    }

    public String getNum_doses() {
        return num_doses;
    }

    public void setNum_doses(String num_doses) {
        this.num_doses = num_doses;
    }

    public String getIdade_recomendada() {
        return idade_recomendada;
    }

    public void setIdade_recomendada(String idade_recomendada) {
        this.idade_recomendada = idade_recomendada;
    }

    public String getIntervalo_doses() {
        return intervalo_doses;
    }

    public void setIntervalo_doses(String intervalo_doses) {
        this.intervalo_doses = intervalo_doses;
    }
}
