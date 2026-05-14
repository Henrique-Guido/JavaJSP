<%@page import="controller.MembroController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Membro</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container">

<%
int id = Integer.parseInt(request.getParameter("id"));

MembroController controller = new MembroController();
controller.excluir(id);
%>

    <div class="status-box success">
        <h2>Membro excluído</h2>
    </div>

    <div class="actions">
        <a href="listar.jsp">
            <button type="button">Membros</button>
        </a>
    </div>

</main>

</body>
</html>