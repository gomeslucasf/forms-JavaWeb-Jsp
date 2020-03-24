package Models;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Pessoa implements Serializable {
    private int codigo;
    private String nome;
    private String CPF;
    private String pai;
    private String mae;
    private LocalDate data_Nascimento;
    private String estado;
    private String cidade;
    private String bairro;
    private String rua;
    private int numeroCasa;

    public Pessoa() {
        setCodigo(0);
        setNome("");
        setCPF("");
        setMae("");
        setPai("");
        setData_Nascimento(LocalDate.now());
        setEstado("");
        setCidade("");
        setBairro("");
        setRua("");
        setNumeroCasa(0);
    }

    public Pessoa(int codigo, String nome, String CPF, String mae, LocalDate data_Nascimento, String estado, String cidade, String bairro, String rua, int numeroCasa) {
        this();
        setCodigo(codigo);
        setNome(nome);
        setCPF(CPF);
        setMae(mae);
        setData_Nascimento(data_Nascimento);
        setEstado(estado);
        setCidade(cidade);
        setBairro(bairro);
        setRua(rua);
        setNumeroCasa(numeroCasa);
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

    public String getEstado() {
        return estado;
    }

    public String getCidade() {
        return cidade;
    }

    public String getBairro() {
        return bairro;
    }

    public String getRua() {
        return rua;
    }

    public int getNumeroCasa() {
        return numeroCasa;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public void setNumeroCasa(int numeroCasa) {
        this.numeroCasa = numeroCasa;
    }
    
    public String getDataFormatada(){

        String pDataNasc = getData_Nascimento().toString();
        String[] vetData = pDataNasc.split("-");
        pDataNasc = vetData[2]+ "/" + vetData[1]+ "/" + vetData[0];
        return pDataNasc;
    }
}
