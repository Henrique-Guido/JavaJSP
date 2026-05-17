<%@page import="controller.PetController"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PetShop - Excluir Pet</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container">

<%
int id = Integer.parseInt(request.getParameter("id"));

PetController controller = new PetController();
controller.excluir(id);
%>

    <div class="status-box success">
        <h2>Pet excluído com sucesso</h2>
    </div>

    <div class="actions">
        <a href="listar.jsp">
            <button type="button">Ver Pets</button>
        </a>
    </div>

</main>

</body>
</html>