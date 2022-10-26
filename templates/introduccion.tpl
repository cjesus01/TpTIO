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
    <table>
        <thead>
            <tr>
                <td>Año</td>
                <td>Suceso</td>
                <td>Eliminar fila</td>
                <td>Modificar fila</td>
            </tr>
        </thead>
        <tbody>
            {foreach from=$Historia item=$historia}
            <tr>
                <td>{$historia->anio}</td>
                <td>{$historia->suceso}</td>
                <td><button  class="myButton"><a href='Introduccion/EliminarHistoria/{$historia->id}'>Eliminar</a></button></td>
                <td><button class="myButton"><a href='Introduccion/FormularioModificarHistoria/{$historia->id}'>Editar</a></button></td>
            </tr>
            {/foreach}
        </tbody>
    </table>
    <button class="myButton"><a href="Introduccion/Agregar">Agregar nuevo suceso</a></button>
{include file = 'footer.tpl'}
</body>
</html>