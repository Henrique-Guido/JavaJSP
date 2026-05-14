<%@page import="controller.MembroController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Validação</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container">

<%
String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
String estado = request.getParameter("estado");
String email = request.getParameter("email");
String categoria = request.getParameter("categoria");
String rank = request.getParameter("rank");

MembroController controller = new MembroController();
controller.salvar(nome, cpf, estado, email, categoria, rank);
%>

    <div class="status-box success">
        <h2>Seja bem vindo à equipe!</h2>
    </div>

    <div class="actions">
        <a href="index.html">
            <button type="button">Voltar</button>
        </a>

        <a href="listar.jsp">
            <button type="button">Membros</button>
        </a>
    </div>

</main>

</body>
</html>