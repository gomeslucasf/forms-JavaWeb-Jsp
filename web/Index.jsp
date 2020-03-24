<%@page import="java.util.ArrayList"%>
<%@page import="Models.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
ArrayList<String> erros = new ArrayList<String>();
String bSubmit = request.getParameter("bSubmit");
String pCodigo = request.getParameter("pCodigo");
String pNome = request.getParameter("pNome");
String pDataNasc = request.getParameter("pDataNasc");
String pCPF = request.getParameter("pCPF");
String pPai = request.getParameter("pPai");
String pMae = request.getParameter("pMae");

if(bSubmit != null)
{   
    Pessoa nPessoa = (Pessoa)session.getAttribute("nPessoa");
    if(nPessoa == null)
        nPessoa = new Pessoa();
    
    if(pCodigo != null && !pCodigo.isEmpty())
        nPessoa.setCodigo(Integer.parseInt(pCodigo));
    else
        erros.add("O código precisa ser preenchido");

    
    if(pNome != null && !pNome.isEmpty())
        nPessoa.setNome(pNome);
    else
        erros.add("O nome precisa ser preenchido");
    
    if(pDataNasc != null && !pDataNasc.isEmpty())
        try {
            nPessoa.setData_Nascimento(pDataNasc);
        } catch(Exception e) {
            erros.add("A data de nascimento informada não é valida");
        }
    else
        erros.add("A data de nascimento precisa ser preenchida");
    
    if(pCPF != null && !pCPF.isEmpty())
        nPessoa.setCPF(pCPF);
    else
        erros.add("O CPF precisa ser preenchido");
    
    if(pPai != null && !pPai.isEmpty())
        nPessoa.setPai(pPai);
    
    if(pMae != null && !pMae.isEmpty())
        nPessoa.setMae(pMae);
    else
        erros.add("O nome da mãe precisa ser preenchido");
    
    if(erros.isEmpty())
    {
        session.setAttribute("nPessoa", nPessoa);
        response.sendRedirect("/dois.jsp");
    }
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro pessoal</title>
        <!-- Chamando bootstrap-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </head>
<<<<<<< HEAD
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
                                        <h2>Cadastro De Cliente</h2>
                                    </div>
                                </div>
                            </div>
                        </div>  
                        <div class="panel-body">
                            <form action="localidade.jsp">
                                <div class="container">
                                    <div class="row">
                                        <div class="form-group col-3">
                                          <label for="pCodigo" class="">Codigo</label>
                                          <input type="number" class="form-control" id="pCodigo" name="pCodigo" value="<%= (pCodigo != null)?pCodigo:"" %>" required >
                                          
                                        </div>
                                        <div class="form-group col-9">
                                          <label for="pNome">Nome</label>
                                          <input type="text" class="form-control" id="pNome" name="pNome" value="<%= (pNome != null)?pNome:"" %>" placeholder="Jose da Silva" required>
                                        </div>
                                        <div class="form-group col-6">
                                          <label for="pDataNasc" >Data de Nascimento</label>
                                          <input type="date" class="form-control" id="pDataNasc"  value="<%= (pDataNasc != null)?pDataNasc:"" %>" name="pDataNasc" required>
                                        </div>
                                        <div class="form-group col-6">
                                          <label for="pCPF" >CPF</label>
                                          <input type="text" class="form-control" id="pCPF" name="pCPF" value="<%= (pCPF != null)?pCPF:"" %>" placeholder="xxx.xxx.xxx-xx" required>
                                        </div>
                                        <div class="form-group col-12">
                                          <label for="pNomeMae" >Nome da Mãe </label>
                                          <input type="text" class="form-control" id="pNomeMae" name="pNomeMae" value="<%= (pMae != null)?pMae:"" %>" required placeholder="Maria da Silva">
                                        </div>
                                        <div class="form-group col-12">
                                          <label for="pNomePai" >Nome do Pai</label>
                                          <input type="text" class="form-control" id="pNomePai" name="pNomePai" value="<%= (pPai != null)?pPai:"" %>" placeholder="Jose da Silva">
                                        </div>
                                        <div class="col-2">
                                        </div>
                                        <div class="col-7">
                                        </div>
                                        <div class="col-2">
                                            <button  type="submit" class="btn btn-success mb-2 ">Enviar</button>
                                        </div>
                                    </div>
                                </div>
                                <% for(String erro:erros){ %>
                                    <%= erro %><br/>
                                <% } %>

                          </form>
                            <label>Progresso</label>
                            <div class="progress">
                                <div class="progress-bar bg-success" role="progressbar" style="width: 0%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>

                </div>
            </div>
        </div>
    </body>
    
</html>
