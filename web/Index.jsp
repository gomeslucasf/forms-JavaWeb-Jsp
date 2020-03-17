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
        <title>Cadastro de Pessoas</title>
    </head>
    <body>
        <form>
        <label for="pCodigo">* Código:</label>
        <input type="number" id="pCodigo" name="pCodigo" value="<%= (pCodigo != null)?pCodigo:"" %>" required/>
        <br/>
        <label for="pNome">* Nome:</label>
        <input type="text" id="pNome" name="pNome" value="<%= (pNome != null)?pNome:"" %>" required/>
        <br/>
        <label for="pDataNasc">* Data de Nascimento:</label>
        <input type="date" id="pDataNasc" name="pDataNasc" value="<%= (pDataNasc != null)?pDataNasc:"" %>" required/>
        <br/>
        <label for="pCPF">* CPF:</label>
        <input type="text" id="pCPF" name="pCPF" value="<%= (pCPF != null)?pCPF:"" %>" required/>
        <br/>
        <label for="pPai">Pai:</label>
        <input type="text" id="pPai" name="pPai" value="<%= (pPai != null)?pPai:"" %>"/>
        <br/>
        <label for="pMae">* Mãe:</label>
        <input type="text" id="pMae" name="pMae" value="<%= (pMae != null)?pMae:"" %>" required/>
        <br/>
        <input type="submit" name="bSubmit" value="Próximo"/>
        </form>
        <% for(String erro:erros){ %>
            <%= erro %><br/>
        <% } %>
    </body>
</html>
