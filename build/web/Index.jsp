<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Pessoas</title>
    </head>
    <body>
        <label for="pCodigo">Código:</label>
        <input type="number" id="pCodigo" name="pCodigo"/>
        <br/>
        <label for="pNome">Nome:</label>
        <input type="text" id="pNome" name="pNome"/>
        <br/>
        <label for="pDataNasc">Data de Nascimento:</label>
        <input type="date" id="pDataNasc" name="pDataNasc"/>
        <br/>
        <label for="pCPF">CPF:</label>
        <input type="text" id="pCPF" name="pCPF"/>
        <br/>
        <label for="pPai">Pai</label>
        <input type="text" id="pPai" name="pPai"/>
        <br/>
        <label for="pMae">Mãe</label>
        <input type="text" id="pMãe" name="pMãe"/>
        <br/>
        <input type="submit" name="bSubmit" value="Próximo"/>
    </body>
</html>
