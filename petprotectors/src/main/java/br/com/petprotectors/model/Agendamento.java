package br.com.petprotectors.model;

import java.sql.Date;

public class Agendamento {
    private String agendamentoId;
    private Date data;
    private Cliente cliente;
    private Pet pet;
    private String especialidade;
    private String local;

    public Agendamento(String agendamentoId, java.sql.Date data, Cliente cliente, Pet pet, String especialidade, String local) {
        this.agendamentoId = agendamentoId;
        this.cliente = cliente;
        this.pet = pet;
        this.especialidade = especialidade;
        this.local = local;
    }

    public Agendamento(Date dataHora, String clienteId, String petId, String especialidade, String local) {
    }

    public String getId() {
        return agendamentoId;
    }

    public boolean isEmpty() {
        return this.agendamentoId.isEmpty();
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Pet getPet() {
        return pet;
    }

    public void setPet(Pet pet) {
        this.pet = pet;
    }

    public String getEspecialidade() {
        return especialidade;
    }

    public void setEspecialidade(String especialidade) {
        this.especialidade = especialidade;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    @Override
    public String toString() {
        return "Agendamento{" +
                "agendamentoId='" + agendamentoId + '\'' +
                ", data=" + data +
                ", cliente=" + cliente +
                ", pet=" + pet +
                ", especialidade='" + especialidade + '\'' +
                ", local='" + local + '\'' +
                '}';
    }
}
