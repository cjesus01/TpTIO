<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$title}</title>
    <base href="{$BASE_URL}">
    <link rel="stylesheet" href="styles/modal.css">
    <link rel="stylesheet" href="styles/style.css">
</head>

<body>
    <header>
        <nav id='menu'>
            <input type='checkbox' id='responsive-menu' onclick='updatemenu()'><label></label>
            <ul>
                <a href = "Introduccion">Inicio</a>
                <a href = "Recursos">Recursos</a>
                <a href = "Productos">Productos</a>
                <a href = "Introduccion/Objetivos">Objetivos</a>
                <a href = "login">Acceder</a>
                <a href = "registrarse">Registrarse</a>
            </ul>
        </nav>
    </header>
</body>
<script src="js/CurriculumModal.js"></script>