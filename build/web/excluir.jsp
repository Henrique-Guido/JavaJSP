<%@page import="controller.TarefaController"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Tarefas - Excluir</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container">

<%
int id = Integer.parseInt(request.getParameter("id"));

TarefaController controller = new TarefaController();
controller.excluir(id);
%>

    <div class="status-box success">
        <h2>Tarefa excluída com sucesso</h2>
    </div>

    <div class="actions">
        <a href="listar.jsp">
            <button type="button">Ver Tarefas</button>
        </a>
    </div>

</main>

</body>
</html>
