<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Tarefa"%>
<%@page import="controller.TarefaController"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Tarefas</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container wide">

    <h2>Tarefas Cadastradas</h2>

    <div class="table-wrapper">
        <table class="modern-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Título</th>
                    <th>Descrição</th>
                    <th>Prioridade</th>
                    <th>Status</th>
                    <th>Prazo</th>
                    <th>Responsável</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>

<%
TarefaController controller = new TarefaController();
List<Tarefa> lista = controller.listar();

for(Tarefa t : lista){
%>
                <tr>
                    <td><%= t.getId() %></td>
                    <td><%= t.getTitulo() %></td>
                    <td><%= t.getDescricao() %></td>
                    <td><%= t.getPrioridade() %></td>
                    <td><%= t.getStatus() %></td>
                    <td><%= t.getPrazo() %></td>
                    <td><%= t.getResponsavel() %></td>
                    <td class="actions-inline">
                        <a href="editar.jsp?id=<%= t.getId() %>" class="btn-edit">Editar</a>
                        <a href="excluir.jsp?id=<%= t.getId() %>" class="btn-delete">Excluir</a>
                    </td>
                </tr>
<%
}
%>

            </tbody>
        </table>
    </div>

    <div class="actions">
        <a href="index.html">
            <button type="button">Voltar</button>
        </a>
    </div>

</main>

</body>
</html>
