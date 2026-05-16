<%@page import="java.util.List"%>
<%@page import="model.Membros"%>
<%@page import="controller.MembroController"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Membros</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<main class="container wide">

    <h2>Nossa Equipe</h2>

    <div class="table-wrapper">
        <table class="modern-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Estado</th>
                    <th>Email</th>
                    <th>Categoria</th>
                    <th>Rank</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>

<%
MembroController controller = new MembroController();
List<Membros> lista = controller.listar();

for(Membros f : lista){
%>
                <tr>
                    <td><%= f.getId() %></td>
                    <td><%= f.getNome() %></td>
                    <td><%= f.getCpf() %></td>
                    <td><%= f.getEstado() %></td>
                    <td><%= f.getEmail() %></td>
                    <td><%= f.getCategoria() %></td>
                    <td><%= f.getRank() %></td>
                    <td class="actions-inline">
                        <a href="editar.jsp?id=<%= f.getId() %>" class="btn-edit">Editar</a>
                        <a href="excluir.jsp?id=<%= f.getId() %>" 
                           class="btn-delete"
                           onclick="return confirm('Excluir <%= f.getNome() %>?')">
                           Excluir
                        </a>
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