<%-- 
    Document   : confirma
    Created on : 24/03/2020, 12:03:53
    Author     : Gomes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Models.Pessoa"%>

<%
Pessoa nPessoa = (Pessoa) session.getAttribute("nPessoa");
String bSubmit = request.getParameter("bSubmit");

if(nPessoa != null){

    if(bSubmit != null)
    {
        if(bSubmit.equals("OK"))
        {   
            ArrayList<Pessoa> listap = (ArrayList) session.getAttribute("listap");
            if(listap == null)
                listap = new ArrayList<Pessoa>();

            listap.add(nPessoa);
            session.setAttribute("listap", listap);
            session.removeAttribute("nPessoa");
            response.sendRedirect("fim.jsp");
        }
        if(bSubmit.equals("alter")){
            response.sendRedirect("localidade.jsp");   
        }
    }
}else{
    response.sendRedirect("Index.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Informação</title>        
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
                            <label>Progresso 3/3</label>
                            <div class="progress">
                                <div class="progress-bar bg-success" role="progressbar" style="width: 90%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <div class="container p-3">
                                <div class="row">
                                    <div class="col-1"></div>
                                    <div class="col-10">
                                        <h2>Cadastro de Endereço</h2>
                                    </div>
                                </div>
                            </div>
                        </div>  
                        <div class="panel-body">
                            <form action="confirma.jsp">
                            <div class="row">
                                <div class="col-12">
                                    <ul class="list-group">
                                        <li class="list-group-item">Codigo  : <%= nPessoa.getCodigo()%></li>
                                        <li class="list-group-item">Nome  : <%= nPessoa.getNome()%></li>
                                        <li class="list-group-item">Data Nascimento : <%= nPessoa.getDataFormatada()  %> </li>
                                        <li class="list-group-item">CPF : <%= nPessoa.getCPF() %> </li>
                                        <li class="list-group-item">Mãe : <%= nPessoa.getMae() %></li>
                                        <li class="list-group-item">Pai : <%= nPessoa.getPai() %></li>
                                        <li class="list-group-item">Estado : <%= nPessoa.getEstado() %></li>
                                        <li class="list-group-item">Cidade : <%= nPessoa.getCidade() %></li>
                                        <li class="list-group-item">Bairro : <%= nPessoa.getBairro() %></li>
                                        <li class="list-group-item">Rua : <%= nPessoa.getRua() %></li>
                                        <li class="list-group-item">Nº : <%= nPessoa.getNumeroCasa() %></li>                                        
                                    </ul>
                                </div>
                                <div class="col-2 p-3">
                                    <button id="bSubmit"  name="bSubmit" type="submit" value="alter" class="btn btn-warning mb-2">Alterar</button>
                                </div>
                                <div class="col-7">
                                </div>

                                <div class="col-2 p-3">
                                    <button id="bSubmit" name="bSubmit" type="submit" value="OK" class="btn btn-success mb-2 ">Concluir</button>
                                </div>
                                    
                            </div>
                            </form>
                        </div>

                </div>
            </div>
        </div>
    </body>
</html>
