<%@page import="model.Responsavel"%>
<%@page import="controller.ResponsavelController"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsáveis - Editar</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>

<main class="container">

    <h2>Editar Responsável</h2>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    ResponsavelController controller = new ResponsavelController();
    Responsavel r = controller.buscar(id);
%>

<% if(r != null) { %>

<form action="atualizar.jsp" method="post">

    <input type="hidden" name="id" value="<%= r.getId() %>">

    <div class="form-group">
        <label>ID</label>
        <input type="text" value="<%= r.getId() %>" disabled>
    </div>

    <div class="form-group">
        <label for="nome">Nome</label>
        <input type="text" id="nome" name="nome" value="<%= r.getNome() %>" required>
    </div>

    <div class="form-group">
        <label for="email">E-mail</label>
        <input type="email" id="email" name="email" value="<%= r.getEmail() %>" required>
    </div>

    <div class="form-group">
        <label for="telefone">Telefone</label>
        <input type="text" id="telefone" name="telefone" value="<%= r.getTelefone() %>">
    </div>

    <div class="form-group">
        <label for="cargo">Cargo</label>
        <select id="cargo" name="cargo">
            <option value="Analista" <%= "Analista".equals(r.getCargo()) ? "selected" : "" %>>Analista</option>
            <option value="Desenvolvedor" <%= "Desenvolvedor".equals(r.getCargo()) ? "selected" : "" %>>Desenvolvedor</option>
            <option value="Gerente" <%= "Gerente".equals(r.getCargo()) ? "selected" : "" %>>Gerente</option>
            <option value="Outro" <%= "Outro".equals(r.getCargo()) ? "selected" : "" %>>Outro</option>
        </select>
    </div>

    <div class="form-actions">
        <input type="submit" value="Atualizar">
    </div>

</form>

<% } else { %>

<div class="status-box error">
    <h3>Responsável não encontrado</h3>
</div>

<% } %>

<div class="actions">
    <a href="listar.jsp">
        <button type="button">Ver Responsáveis</button>
    </a>
</div>

</main>

</body>
</html>
