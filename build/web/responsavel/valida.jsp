<%@page import="controller.ResponsavelController"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsáveis - Cadastro</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>

<main class="container">

<%
request.setCharacterEncoding("UTF-8");
String nome = request.getParameter("nome");
String email = request.getParameter("email");
String telefone = request.getParameter("telefone");
String cargo = request.getParameter("cargo");

ResponsavelController controller = new ResponsavelController();
controller.salvar(nome, email, telefone, cargo);
%>

    <div class="status-box success">
        <h2>Responsável cadastrado com sucesso!</h2>
        <p><strong>Nome:</strong> <%= nome %></p>
        <p><strong>Cargo:</strong> <%= cargo %></p>
    </div>

    <div class="actions">
        <a href="cadastrar.html">
            <button type="button">Novo Responsável</button>
        </a>

        <a href="listar.jsp">
            <button type="button">Ver Responsáveis</button>
        </a>
    </div>

</main>

</body>
</html>
