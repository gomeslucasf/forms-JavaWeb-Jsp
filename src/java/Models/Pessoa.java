package Models;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Pessoa implements Serializable {
    int codigo;
    String nome;
    String CPF;
    String pai;
    String mae;
    LocalDate data_Nascimento;

    public Pessoa() {
        setCodigo(0);
        setNome("");
        setCPF("");
        setMae("");
        setPai("");
        setData_Nascimento(LocalDate.now());
    }

    public Pessoa(int codigo, String nome, String CPF, String mae, LocalDate data_Nascimento) {
        this();
        setCodigo(codigo);
        setNome(nome);
        setCPF(CPF);
        setMae(mae);
        setData_Nascimento(data_Nascimento);
    }
    

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCPF() {
        return CPF;
    }

    public void setCPF(String CPF) {
        this.CPF = CPF;
    }

    public String getPai() {
        return pai;
    }

    public void setPai(String pai) {
        this.pai = pai;
    }

    public String getMae() {
        return mae;
    }

    public void setMae(String mae) {
        this.mae = mae;
    }

    public LocalDate getData_Nascimento() {
        return data_Nascimento;
    }

    public void setData_Nascimento(String data_Nascimento) throws Exception {
        DateTimeFormatter DateFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        this.data_Nascimento = LocalDate.parse(data_Nascimento, DateFormat);
    }
    
    public void setData_Nascimento(LocalDate data_Nascimento) {
        this.data_Nascimento = data_Nascimento;
    }
}
