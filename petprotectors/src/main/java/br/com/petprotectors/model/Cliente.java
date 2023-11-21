package br.com.petprotectors.model;

import java.util.Date;

public class Cliente {

    private String nome;

    private String cpf;

    private String genero;

    private String pets;

    private String nascimento;

    private String email;

    private String senha;

    private String endereco;

    private String telefone;

    private String clienteId;

    public void setPlano(int plano) {
        this.plano = plano;
    }

    public Cliente() {
    }

    public Cliente(String nome, String cpf, String genero, String pets,String nascimento, String email, String senha, String endereco, String telefone, String id) {
        this.nome = nome;
        this.cpf = cpf;
        this.genero = genero;
        this.pets = pets;
        this.nascimento = nascimento;
        this.email = email;
        this.senha = senha;
        this.endereco = endereco;
        this.telefone = telefone;
        this.clienteId = id;
    }



    public Cliente(String nome, String cpf, String genero, String nascimento, String email, String senha, String endereco, String telefone, String id) {
        this.nome = nome;
        this.cpf = cpf;
        this.genero = genero;
        this.email = email;
        this.senha = senha;
        this.nascimento = nascimento;
        this.endereco = endereco;
        this.telefone = telefone;
        this.clienteId = id;
    }

    public Cliente(String nome) {
        this.nome = nome;
    }

    public Cliente(String email, String senha) {
        this.email = email;
        this.senha = senha;
    }

    public Cliente(int plano) {
        this.plano = plano;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getPets() {
        return pets;
    }

    public void setPets(String pets) {
        this.pets = pets;
    }

    public String getNascimento() {
        return nascimento;
    }

    public void setNascimento(String nascimento) {
        this.nascimento = nascimento;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getClienteId() {
        return clienteId;
    }

    public void setClienteId(String id) {
        this.clienteId = id;
    }
    
    public boolean isEmpty(){
        return this.clienteId.isEmpty();
    }

    @Override
    public String toString() {
        return "Cliente{" +
                "nome='" + nome + '\'' +
                ", cpf='" + cpf + '\'' +
                ", genero='" + genero + '\'' +
                ", pets='" + pets + '\'' +
                ", nascimento=" + nascimento +
                ", email='" + email + '\'' +
                ", senha='" + senha + '\'' +
                ", endereco='" + endereco + '\'' +
                ", telefone='" + telefone + '\'' +
                ", clienteId='" + clienteId + '\'' +
                ", plano='" + plano + '\'' +
                '}';
    }
    private int plano;

    public int getPlano() {
        return plano;
    }
}
