package br.com.petprotectors.model;

import java.util.Date;

public class Agendamento {






    public Agendamento(Date dataHora, Cliente cliente, Pet pet){
        this.dataHora = dataHora;
        this.cliente = cliente;
        this.pet = pet;

    }

    private Date dataHora;
    private Cliente cliente;
    private Pet pet;

    public Agendamento() {

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
                "dataHora=" + dataHora +
                ", cliente=" + cliente +
                ", pet=" + pet +
                '}';
    }
}

