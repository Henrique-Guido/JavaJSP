<%@page import="controller.PetController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PetShop - Cadastro</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container">

<%
String nomeAnimal = request.getParameter("nomeAnimal");
String especie = request.getParameter("especie");
String raca = request.getParameter("raca");
String tutorEmail = request.getParameter("tutorEmail");
String porte = request.getParameter("porte");
String peso = request.getParameter("peso");

PetController controller = new PetController();
controller.salvar(nomeAnimal, especie, raca, tutorEmail, porte, peso);
%>

    <div class="status-box success">
        <h2>Pet cadastrado com sucesso!</h2>
    </div>

    <div class="actions">
        <a href="index.html">
            <button type="button">Voltar</button>
        </a>

        <a href="listar.jsp">
            <button type="button">Ver Pets</button>
        </a>
    </div>

</main>

</body>
</html>