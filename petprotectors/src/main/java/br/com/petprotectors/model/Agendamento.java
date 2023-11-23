package br.com.petprotectors.model;

import java.sql.Date;

public class Agendamento {
    private String agendamentoId;
    private Date data;
    private String hora;
    private String cliente;
    private String pet;
    private String especialidade;
    private String local;

    public Agendamento(String agendamentoId, Date data, String cliente, String pet, String especialidade, String local) {
        this.agendamentoId = agendamentoId;
        this.cliente = cliente;
        this.pet = pet;
        this.especialidade = especialidade;
        this.local = local;
    }

    public Agendamento(Date dataHora, String clienteId, String petId, String especialidade, String local) {
        this.data = dataHora;
        this.cliente = clienteId;
        this.pet = petId;
        this.especialidade = especialidade;
        this.local = local;

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

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getPet() {
        return pet;
    }

    public void setPet(String pet) {
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

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
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
