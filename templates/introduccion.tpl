<html>
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