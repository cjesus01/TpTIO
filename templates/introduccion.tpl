<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$title}</title>
    <base href = "{$BASE_URL}">
</head>
<body>
    {foreach from=$Historia item=$historia}
    <h3>{$historia->anio}</h3>
    <h3>Suceso: {$historia->suceso}</h3>
    {/foreach}
    <a href="Introduccion/Objetivos">Ir a objetivos</a>  
</body>
</html>