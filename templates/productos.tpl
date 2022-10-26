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
{foreach from = $productos item = $producto}
    <p>{$producto->producto}</p>
    <p>{$producto->descripcion}</p>
{/foreach}
{include file = 'footer.tpl'}
</body>

</html>