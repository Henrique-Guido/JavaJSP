<%@page import="model.Tarefa"%>
<%@page import="controller.TarefaController"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Tarefas - Editar</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container">

    <h2>Editar Tarefa</h2>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    TarefaController controller = new TarefaController();
    Tarefa t = controller.buscar(id);
%>

<% if(t != null) { %>

<form action="atualizar.jsp" method="post">

    <input type="hidden" name="id" value="<%= t.getId() %>">

    <div class="form-group">
        <label>ID</label>
        <input type="text" value="<%= t.getId() %>" disabled>
    </div>

    <div class="form-group">
        <label for="titulo">Título</label>
        <input type="text" id="titulo" name="titulo" value="<%= t.getTitulo() %>" required>
    </div>

    <div class="form-group">
        <label for="descricao">Descrição</label>
        <input type="text" id="descricao" name="descricao" value="<%= t.getDescricao() %>">
    </div>

    <div class="form-group">
        <label for="prioridade">Prioridade</label>
        <select id="prioridade" name="prioridade">
            <option value="Baixa" <%= "Baixa".equals(t.getPrioridade()) ? "selected" : "" %>>Baixa</option>
            <option value="Média" <%= "Média".equals(t.getPrioridade()) ? "selected" : "" %>>Média</option>
            <option value="Alta" <%= "Alta".equals(t.getPrioridade()) ? "selected" : "" %>>Alta</option>
        </select>
    </div>

    <div class="form-group">
        <label for="status">Status</label>
        <select id="status" name="status">
            <option value="Pendente" <%= "Pendente".equals(t.getStatus()) ? "selected" : "" %>>Pendente</option>
            <option value="Em Andamento" <%= "Em Andamento".equals(t.getStatus()) ? "selected" : "" %>>Em Andamento</option>
            <option value="Concluída" <%= "Concluída".equals(t.getStatus()) ? "selected" : "" %>>Concluída</option>
        </select>
    </div>

    <div class="form-group">
        <label for="prazo">Prazo</label>
        <input type="date" id="prazo" name="prazo" value="<%= t.getPrazo() %>">
    </div>

    <div class="form-group">
        <label for="responsavel">Responsável</label>
        <input type="text" id="responsavel" name="responsavel" value="<%= t.getResponsavel() %>" required>
    </div>

    <div class="form-actions">
        <input type="submit" value="Atualizar">
    </div>

</form>

<% } else { %>

<div class="status-box error">
    <h3>Tarefa não encontrada</h3>
</div>

<% } %>

<div class="actions">
    <a href="listar.jsp">
        <button type="button">Ver Tarefas</button>
    </a>
</div>

</main>

</body>
</html>
