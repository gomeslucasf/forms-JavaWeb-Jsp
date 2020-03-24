<%-- 
    Document   : confirma
    Created on : 24/03/2020, 12:03:53
    Author     : Gomes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <div class="row">
                                <div class="col-12">
                                    <ul class="list-group">
                                        <li class="list-group-item">Nome : </li>
                                        <li class="list-group-item">Dados:</li>
                                        <li class="list-group-item">Dados:</li>
                                        <li class="list-group-item">Dados:</li>
                                        <li class="list-group-item">Dados:</li>
                                    </ul>
                                </div>
                            </div>
                            <label class="p-3">Progresso</label>
                            <div class="progress">
                                <div class="progress-bar bg-success" role="progressbar" style="width: 90%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>

                </div>
            </div>
        </div>
    </body>
</html>