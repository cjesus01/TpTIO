<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>{$title}</title>
        <base href = "{$BASE_URL}">
    </head>
    <body>
    {include file = 'header.tpl'}
        <form method="post" action="Introduccion/AgregarSuceso">
            <label for="anio">Ingrese el año:</label>
            <input type="text" name="anio" >
            <label for="suceso">Ingrese el suceso acontecido en ese año:</label>
            <textarea name="suceso" cols="30" rows="10"></textarea>
            <button type='submit' class="myButton">Enviar</button>
        </form>
    {include file = 'footer.tpl'}
    </body>
</html>