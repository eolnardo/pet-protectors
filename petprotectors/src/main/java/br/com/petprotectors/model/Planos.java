package br.com.petprotectors.model;

import java.util.ArrayList;

public class Planos {
    private String nome;
    private double preco;
    private int planoid;
    private String descricao;

    public Planos() {
    }

    public Planos(int planoid, String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
        this.planoid = planoid;
    }

    public Planos(int planoid, String nome, double preco, String descricao) {
        this.nome = nome;
        this.preco = preco;
        this.planoid = planoid;
        this.descricao = descricao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public int getPlanoid() {
        return planoid;
    }

    public void setPlanoid(int planoid) {
        this.planoid = planoid;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Planos plano = (Planos) obj;
        return nome.equals(plano.nome);
    }

    @Override
    public int hashCode() {
        return nome.hashCode();
    }

    @Override
    public String toString() {
        return "Planos{" +
                "nome='" + nome + '\'' +
                ", preco=" + preco +
                ", planoid=" + planoid +
                ", descricao='" + descricao + '\'' +
                '}';
    }
}
