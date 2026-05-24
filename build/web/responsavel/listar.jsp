<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Responsavel"%>
<%@page import="controller.ResponsavelController"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsáveis Cadastrados</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>

<main class="container wide">

    <h2>Responsáveis Cadastrados</h2>

    <div class="table-wrapper">
        <table class="modern-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>E-mail</th>
                    <th>Telefone</th>
                    <th>Cargo</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>

<%
ResponsavelController controller = new ResponsavelController();
List<Responsavel> lista = controller.listar();

for(Responsavel r : lista){
%>
                <tr>
                    <td><%= r.getId() %></td>
                    <td><%= r.getNome() %></td>
                    <td><%= r.getEmail() %></td>
                    <td><%= r.getTelefone() %></td>
                    <td><%= r.getCargo() %></td>
                    <td class="actions-inline">
                        <a href="editar.jsp?id=<%= r.getId() %>" class="btn-edit">Editar</a>
                        <a href="excluir.jsp?id=<%= r.getId() %>" class="btn-delete">Excluir</a>
                    </td>
                </tr>
<%
}
%>

            </tbody>
        </table>
    </div>

    <div class="actions">
        <a href="cadastrar.html">
            <button type="button">Novo Responsável</button>
        </a>
    </div>

</main>

</body>
</html>
