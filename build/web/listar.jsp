<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Pet"%>
<%@page import="controller.PetController"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PetShop - Lista de Pets</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container wide">
    <h2>Pets Cadastrados</h2>
    <div class="table-wrapper">
        <table class="modern-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome do Animal</th>
                    <th>Espécie</th>
                    <th>Raça</th>
                    <th>Nome do Tutor</th>
                    <th>Email do Tutor</th>
                    <th>Porte</th>
                    <th>Peso (kg)</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
            <%
            PetController controller = new PetController();
            List<Pet> lista = controller.listar();

            for(Pet f : lista){
            %>
                <tr>
                    <td><%= f.getId() %></td>
                    <td><%= f.getNomeAnimal() %></td>
                    <td><%= f.getEspecie() %></td>
                    <td><%= f.getRaca() %></td>
                    <td><%= f.getTutorNome() %></td>
                    <td><%= f.getTutorEmail() %></td>
                    <td><%= f.getPorte() %></td>
                    <td><%= f.getPeso() %></td>
                    <td class="actions-inline">
                        <a href="editar.jsp?id=<%= f.getId() %>" class="btn-edit">Editar</a>
                        <a href="excluir.jsp?id=<%= f.getId() %>" class="btn-delete">Excluir</a>
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