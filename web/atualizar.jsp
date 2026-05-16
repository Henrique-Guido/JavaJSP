<%@page import="controller.PetController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PetShop - Atualizando</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container">

<%
int id = Integer.parseInt(request.getParameter("id"));
String nomeAnimal = request.getParameter("nomeAnimal");
String especie = request.getParameter("especie");
String raca = request.getParameter("raca");
String tutorEmail = request.getParameter("tutorEmail");
String porte = request.getParameter("porte");
String peso = request.getParameter("peso");

PetController controller = new PetController();
controller.atualizar(id, nomeAnimal, especie, raca, tutorEmail, porte, peso);
%>

    <div class="status-box success">
        <h3>Pet atualizado com sucesso!</h3>
    </div>

    <div class="actions">
        <a href="listar.jsp">
            <button type="button">Ver Pets</button>
        </a>

        <a href="index.html">
            <button type="button">Cadastrar Pet</button>
        </a>
    </div>

</main>

</body>
</html>