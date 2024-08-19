<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Medallas - Juegos Olímpicos</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container my-5">
        <h1 class="text-center mb-4">Registro de Medallas - Juegos Olímpicos</h1>
        <form action="addMedallas" method="post" class="row g-3">
            <div class="col-md-6">
                <label for="country" class="form-label">País</label>
                <input type="text" id="country" name="pais" class="form-control" required>
            </div>
            <div class="col-md-2">
                <label for="gold" class="form-label">Oro</label>
                <input type="number" id="gold" name="oro" class="form-control" min="0" required>
            </div>
            <div class="col-md-2">
                <label for="silver" class="form-label">Plata</label>
                <input type="number" id="silver" name="plata" class="form-control" min="0" required>
            </div>
            <div class="col-md-2">
                <label for="bronze" class="form-label">Bronce</label>
                <input type="number" id="bronze" name="bronce" class="form-control" min="0" required>
            </div>
            <div class="col-12">
                <button type="submit" class="btn btn-primary w-100">Registrar Medallas</button>
            </div>
        </form>

        <h2 class="text-center my-4">Medallero</h2>
        <table id="medalTable" class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>País</th>
                    <th>Oro</th>
                    <th>Plata</th>
                    <th>Bronce</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="medalla" items="${medallas}">
                <tr>
                    <td>${medalla.pais}</td>
                    <td>${medalla.oro}</td>
                    <td>${medalla.plata}</td>
                    <td>${medalla.bronce}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Bootstrap Bundle JS (incluye Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

