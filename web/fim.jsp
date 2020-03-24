<%-- 
    Document   : fim
    Created on : 24/03/2020, 12:13:47
    Author     : Gomes
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Pessoa"%>
<%@page import="Models.ListaPessoas"%>
<%
    ListaPessoas listap = (ListaPessoas) session.getAttribute("listap");
    if(listap == null)
        response.sendRedirect("Index.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Cliente</title>        
         <!-- Chamando bootstrap-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    </head>
    <body style="background-color: #eeee">
        <div class="container">
            <div class="row justify-content-md-center p-5">
                <div class="col-md-12 ">
                    <div class="panel bg p-3 mb-2 text-dark bg-light">
                        <div class="panel-header">
                            <div class="container">
                                <div class="row">
                                    <div class="col-4"></div>
                                    <div class="col-6">
                                        <h2>Lista de Cadastros</h2>
                                    </div>
                                </div>
                            </div>
                        </div>  
                        <div class="panel-body">
                            <table class="table table-striped">
                                <thead>
                                  <tr>
                                    <th scope="col">Código</th>
                                    <th scope="col">Nome</th>
                                    <th scope="col">CPF</th>
                                  </tr>
                                </thead>
                                <tbody>
                                    <%
                                    if(listap != null)
                                    {           
                                        for(Pessoa pessoa : listap.getPessoas())
                                        {
                                        %>
                                      <tr>
                                        <th scope="row"><%= pessoa.getCodigo()%></th>
                                        <td><%= pessoa.getNome()%></td>
                                        <td><%= pessoa.getCPF()%></td>
                                      </tr>
                                        <%
                                        }
                                    }%>
                                </tbody>
                            </table>
                        </div>

                </div>
            </div>
        </div>
    </body>
</html>
