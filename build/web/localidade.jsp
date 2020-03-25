<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Pessoa"%>

<%
ArrayList<String> erros = new ArrayList<String>();

String bSubmit = request.getParameter("bSubmit");
String bReset = request.getParameter("bReset");
String estado = request.getParameter("estado");
String cidade = request.getParameter("cidade");
String bairro = request.getParameter("bairro");
String rua = request.getParameter("rua");
String numero = request.getParameter("numero");

if(bSubmit != null)
{
    if(bSubmit.equals("OK"))
    {   
        Pessoa nPessoa = (Pessoa) session.getAttribute("nPessoa");

        if(nPessoa == null)
            erros.add("Não existe a pessoa!");

        if(estado != null && !estado.isEmpty())
            nPessoa.setEstado(estado);
        else
            erros.add("O estado precisa ser preenchido");

        if(cidade != null && !cidade.isEmpty())
            nPessoa.setCidade(cidade);
        else
            erros.add("A Cidade precisa ser preenchido");

        if(bairro != null && !bairro.isEmpty())
            nPessoa.setBairro(bairro);
        else
            erros.add("O Bairro precisa ser preenchido");

        if(rua != null && !rua.isEmpty())
            nPessoa.setRua(rua);
        else
            erros.add("A Rua precisa ser preenchida");

        if(numero != null && !numero.isEmpty())
            nPessoa.setNumeroCasa(Integer.parseInt(numero));

        if(erros.isEmpty())
        {
            session.setAttribute("nPessoa", nPessoa);
            response.sendRedirect("confirma.jsp");
        }
    }
    if(bSubmit.equals("back") ){
        response.sendRedirect("Index.jsp");
    }
    if(bSubmit.equals("alter")){
        Pessoa nPessoa = (Pessoa)session.getAttribute("nPessoa");

        estado = nPessoa.getEstado();
        cidade = nPessoa.getCidade();
        bairro = nPessoa.getBairro();
        rua = nPessoa.getRua();
        numero = Integer.toString(nPessoa.getNumeroCasa());
    }
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro da Localidade</title>
        <!-- Chamando bootstrap-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </head>
    <body style="background-color: #eeee">
        <div class="container">
            <div class="row justify-content-md-center p-5">
                <div class="col-md-6 ">
                    <div class="panel bg p-3 mb-2 text-dark bg-light">
                        <div class="panel-header">
                            <label>Progresso 2/3</label>
                            <div class="progress">
                                <div class="progress-bar bg-success" role="progressbar" style="width: 30%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-1"></div>
                                    <div class="col-10">
                                        <h2>Cadastro de Endereço</h2>
                                    </div>
                                </div>
                            </div>
                        </div>  
                        <div class="panel-body">
                            <form action="localidade.jsp">
                                <div class="container">
                                    <div class="row">
                                        <div class="form-group col-3">
                                          <label for="estado" >Estado</label>
                                          <select class="form-control" id="estado" name="estado" value="<%= (estado != null)?estado:"" %>" required>
                                                <option value="AC">AC</option>
                                                <option value="AL">AL</option>
                                                <option value="AM">AM</option>
                                                <option value="AP">AP</option>
                                                <option value="BA">BA</option>
                                                <option value="CE">CE</option>
                                                <option value="DF">DF</option>
                                                <option value="ES">ES</option>
                                                <option value="GO">GO</option>
                                                <option value="MA">MA</option>
                                                <option value="MG">MG</option>
                                                <option value="MS">MS</option>
                                                <option value="MT">MT</option>
                                                <option value="PA">PA</option>
                                                <option value="PB">PB</option>
                                                <option value="PE">PE</option>
                                                <option value="PI">PI</option>
                                                <option value="PR">PR</option>
                                                <option value="RJ">RJ</option>
                                                <option value="RN">RN</option>
                                                <option value="RS">RS</option>
                                                <option value="RO">RO</option>
                                                <option value="RR">RR</option>
                                                <option value="SC">SC</option>
                                                <option value="SE">SE</option>
                                                <option value="SP">SP</option>
                                                <option value="TO">TO</option>
                                          </select>
                                        </div>
                                        <div class="form-group col-9">
                                          <label >Cidade</label>
                                          <input type="text" class="form-control" id="cidade"  name="cidade" placeholder="Presidente Prudente"  value="<%= (cidade != null)?cidade:"" %>" required>
                                        </div>
                                        <div class="form-group col-12">
                                          <label >Bairro</label>
                                          <input type="text" class="form-control" id="bairro" name="bairro" placeholder="Cidade Universitária" value="<%= (bairro != null)?bairro:"" %>" required>
                                        </div>
                                        <div class="form-group col-9">
                                          <label>Rua</label>
                                          <input type="text" class="form-control" id="rua" name="rua" placeholder="Rua José Bongiovani" value="<%= (rua != null)?rua:"" %>" required>
                                        </div>
                                        <div class="form-group col-3">
                                          <label >Nº</label>
                                          <input type="number" class="form-control" id="numero" name="numero" value="<%= (numero != null)?numero:"" %>" placeholder="700">
                                        </div>
                                        
                                        <div class="col-2">
                                            <button id="bSubmit"  name="bSubmit" type="submit" value="back" class="btn btn-primary mb-2">Cancelar</button>
                                        </div>
                                        <div class="col-7">
                                        </div>
                                        
                                        <div class="col-2">
                                            <button id="bSubmit" name="bSubmit" type="submit" value="OK" class="btn btn-success mb-2 ">Enviar</button>
                                        </div>
                                    </div>
                                </div>
                          </form>
                            
                        </div>

                </div>
            </div>
        </div>

    </body>
</html>
