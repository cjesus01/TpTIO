<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>{$title}</title>
        <base href = "{$BASE_URL}">
    </head>
    {include file = 'header.tpl'}
    <body>
        <h2>{$mensaje}</h2>
        <button type='submit'><a href='Introduccion'>Volver</a></button>
        {include file='footer.tpl'}
    </body>
</html>