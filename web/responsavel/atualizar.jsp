<%@page import="controller.ResponsavelController"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsáveis - Atualizando</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>

<main class="container">

<%
request.setCharacterEncoding("UTF-8");
int id = Integer.parseInt(request.getParameter("id"));
String nome = request.getParameter("nome");
String email = request.getParameter("email");
String telefone = request.getParameter("telefone");
String cargo = request.getParameter("cargo");

ResponsavelController controller = new ResponsavelController();
controller.atualizar(id, nome, email, telefone, cargo);
%>

    <div class="status-box success">
        <h3>Responsável atualizado com sucesso!</h3>
    </div>

    <div class="actions">
        <a href="listar.jsp">
            <button type="button">Ver Responsáveis</button>
        </a>

        <a href="cadastrar.html">
            <button type="button">Novo Responsável</button>
        </a>
    </div>

</main>

</body>
</html>
