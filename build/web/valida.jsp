<%@page import="controller.TarefaController"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Tarefas - Cadastro</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container">

<%
request.setCharacterEncoding("UTF-8");
String titulo = request.getParameter("titulo");
String descricao = request.getParameter("descricao");
String prioridade = request.getParameter("prioridade");
String status = request.getParameter("status");
String prazo = request.getParameter("prazo");
String responsavel = request.getParameter("responsavel");

TarefaController controller = new TarefaController();
controller.salvar(titulo, descricao, prioridade, status, prazo, responsavel);
%>

    <div class="status-box success">
        <h2>Tarefa cadastrada com sucesso!</h2>
        <p><strong>Tarefa:</strong> <%= titulo %></p>
        <p><strong>Responsável:</strong> <%= responsavel %></p>
    </div>

    <div class="actions">
        <a href="index.html">
            <button type="button">Nova Tarefa</button>
        </a>

        <a href="listar.jsp">
            <button type="button">Ver Tarefas</button>
        </a>
    </div>

</main>

</body>
</html>
