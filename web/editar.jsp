<%@page import="model.Pet"%>
<%@page import="controller.PetController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PetShop - Editar Pet</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container">

    <h2>Editar Informações do Pet</h2>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    PetController controller = new PetController();
    Pet f = controller.buscar(id);
%>

<% if(f != null) { %>

<form action="atualizar.jsp" method="post">

    <input type="hidden" name="id" value="<%= f.getId() %>">

    <div class="form-group">
        <label>ID</label>
        <input type="text" value="<%= f.getId() %>" disabled>
    </div>

    <div class="form-group">
        <label for="nomeAnimal">Nome do Animal</label>
        <input type="text" id="nomeAnimal" name="nomeAnimal" value="<%= f.getNomeAnimal() %>" required>
    </div>

    <div class="form-group">
        <label for="especie">Espécie</label>
        <input type="text" id="especie" name="especie" value="<%= f.getEspecie() %>" required>
    </div>

    <div class="form-group">
        <label for="raca">Raça</label>
        <input type="text" id="raca" name="raca" value="<%= f.getRaca() %>" required>
    </div>

    <div class="form-group">
        <label for="tutorEmail">Email do Tutor</label>
        <input type="email" id="tutorEmail" name="tutorEmail" value="<%= f.getTutorEmail() %>">
    </div>

    <div class="form-group">
        <label for="porte">Porte</label>
        <input type="text" id="porte" name="porte" value="<%= f.getPorte() %>">
    </div>

    <div class="form-group">
        <label for="peso">Peso (kg)</label>
        <input type="number" id="peso" name="peso" value="<%= f.getPeso() %>" step="0.1">
    </div>

    <div class="form-actions">
        <input type="submit" value="Atualizar">
    </div>

</form>

<% } else { %>

<div class="status-box error">
    <h3>Pet não encontrado</h3>
</div>

<% } %>

<div class="actions">
    <a href="listar.jsp">
        <button type="button">Ver Pets</button>
    </a>
</div>

</main>

</body>
</html>