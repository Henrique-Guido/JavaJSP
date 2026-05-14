<%@page import="controller.MembroController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atualizando</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container">

<%
int id = Integer.parseInt(request.getParameter("id"));
String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
String estado = request.getParameter("estado");
String email = request.getParameter("email");
String categoria = request.getParameter("categoria");
String rank = request.getParameter("rank");

MembroController controller = new MembroController();
controller.atualizar(id, nome, cpf, estado, email, categoria, rank);
%>

    <div class="status-box success">
        <h3>Atualizado com sucesso!</h3>
    </div>

    <div class="actions">
        <a href="listar.jsp">
            <button type="button">Membros</button>
        </a>

        <a href="index.html">
            <button type="button">Adicinar Membro</button>
        </a>
    </div>

</main>

</body>
</html>