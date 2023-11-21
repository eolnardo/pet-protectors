package br.com.petprotectors.model;

import br.com.petprotectors.dao.AgendamentoDao;

import java.util.Date;

public class Agendamento {
private String agendamentoId;
    public Agendamento(String local,String especialidade, Date dataHora, Cliente cliente, Pet pet){
        this.dataHora = dataHora;
        this.cliente = cliente;
        this.pet = pet;

    }

    private Date dataHora;
    private Cliente cliente;
    private Pet pet;
    private Agendamento especialidade;
    private Agendamento local;

    public Agendamento() {

    }

    public Agendamento(java.sql.Date dataHora, String clienteId, String petId, String especialidade, String local) {
    }

    public String getId(){

        return agendamentoId;
    }
    public boolean isEmpty(){
        return this.agendamentoId.isEmpty();
    }
    public Date getDataHora() {
        return dataHora;
    }

    public void setDataHora(Date dataHora) {
        this.dataHora = dataHora;
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

    @Override
    public String toString() {
        return "Agendamento{" +
                "agendamentoId='" + agendamentoId + '\'' +
                ", dataHora=" + dataHora +
                ", cliente=" + cliente +
                ", pet=" + pet +
                ", especialidade=" + especialidade +
                ", local=" + local +
                '}';
    }
}

