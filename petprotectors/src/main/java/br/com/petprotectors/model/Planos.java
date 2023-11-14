package br.com.petprotectors.model;

public class Planos {
    private String nome;
    private double preco;
    private int planoid;

    public Planos() {
    }

    public Planos(int planoid, String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
        this.planoid = planoid;
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
}
