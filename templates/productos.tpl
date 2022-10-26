<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$title}</title>
    <base href = "{$BASE_URL}">
    <link rel="stylesheet" href="styles/modal.css">
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
{include file = 'header.tpl'}
{foreach from = $productos item = $producto}
    <div class= "productos">
        <p class = "producto">{$producto->producto}</p>
        <p class = "descripcion">{$producto->descripcion}</p>
    </div>    
{/foreach}
{include file = 'footer.tpl'}
</body>

</html>