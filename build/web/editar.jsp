<%@page import="model.Membros"%>
<%@page import="controller.MembroController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Informações de Membro</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container">

    <h2>Editar Informações de Membro</h2>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    MembroController controller = new MembroController();
    Membros f = controller.buscar(id);
%>

<% if(f != null) { %>

<form action="atualizar.jsp" method="post">

    <input type="hidden" name="id" value="<%= f.getId() %>">

    <div class="form-group">
        <label>ID</label>
        <input type="text" value="<%= f.getId() %>" disabled>
    </div>

    <div class="form-group">
        <label for="nome">Nome</label>
        <input type="text" id="nome" name="nome" value="<%= f.getNome() %>" required>
    </div>

    <div class="form-group">
        <label for="cpf">CPF</label>
        <input type="text" id="cpf" name="cpf" value="<%= f.getCpf() %>" required>
    </div>

    <div class="form-group">
        <label for="estado">Estado</label>
        <input type="text" id="estado" name="estado" value="<%= f.getEstado() %>" required>
    </div>

    <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="<%= f.getEmail() %>" required>
    </div>

    <div class="form-group">
        <label for="categoria">Categoria</label>
        <input type="tel" id="categoria" name="categoria" value="<%= f.getCategoria() %>">
    </div>

    <div class="form-group">
        <label for="rank">Rank</label>
        <input type="text" id="rank" name="rank" value="<%= f.getRank() %>">
    </div>

    <div class="form-actions">
        <input type="submit" value="Atualizar">
    </div>

</form>

<% } else { %>

<div class="status-box error">
    <h3>Membro não encontrado</h3>
</div>

<% } %>

<div class="actions">
    <a href="listar.jsp">
        <button type="button">Membros</button>
    </a>
</div>

</main>

</body>
</html>