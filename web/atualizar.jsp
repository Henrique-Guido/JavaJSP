<%@page import="controller.TarefaController"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Tarefas - Atualizando</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container">

<%
request.setCharacterEncoding("UTF-8");
int id = Integer.parseInt(request.getParameter("id"));
String titulo = request.getParameter("titulo");
String descricao = request.getParameter("descricao");
String prioridade = request.getParameter("prioridade");
String status = request.getParameter("status");
String prazo = request.getParameter("prazo");
String responsavel = request.getParameter("responsavel");

TarefaController controller = new TarefaController();
controller.atualizar(id, titulo, descricao, prioridade, status, prazo, responsavel);
%>

    <div class="status-box success">
        <h3>Tarefa atualizada com sucesso!</h3>
    </div>

    <div class="actions">
        <a href="listar.jsp">
            <button type="button">Ver Tarefas</button>
        </a>

        <a href="index.html">
            <button type="button">Nova Tarefa</button>
        </a>
    </div>

</main>

</body>
</html>
