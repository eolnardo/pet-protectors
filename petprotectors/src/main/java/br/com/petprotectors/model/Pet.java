package br.com.petprotectors.model;

import java.util.Date;

public class Pet {
    public Pet() {
    }

    public Pet(String nome, String idade, String sexo, String especie, String raca, String petId, String tutor) {
        this.nome = nome;
        this.idade = idade;
        this.sexo = sexo;
        this.especie = especie;
        this.raca = raca;
        this.petId = petId;
        this.tutor = tutor;
    }

    private String nome;
    private String tutor;
    private String idade;
    private String sexo;
    private String especie;
    private String raca;
    private String petId;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTutor() {
        return tutor;
    }

    public void setTutor(String tutor) {
        this.tutor = tutor;
    }

    public String getIdade() {
        return idade;
    }

    public void setIdade(String idade) {
        this.idade = idade;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEspecie() {
        return especie;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
    }

    public String getRaca() {
        return raca;
    }

    public void setRaca(String raca) {
        this.raca = raca;
    }

    public String getPetId() {
        return petId;
    }

    public void setPetId(String petId) {
        this.petId = petId;
    }

    @Override
    public String toString() {
        return "Pet{" +
                "nome='" + nome + '\'' +
                ", tutor='" + tutor + '\'' +
                ", idade='" + idade + '\'' +
                ", sexo='" + sexo + '\'' +
                ", especie='" + especie + '\'' +
                ", raca='" + raca + '\'' +
                ", petId='" + petId + '\'' +
                '}';
    }
}
