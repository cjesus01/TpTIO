<html>
    {include file = 'header.tpl'}
    <body>
        <form method="post" action="Introduccion/ModificarHistoria/{$id}">
            <label for="anio">Ingrese el año:</label>
            <input type="text" name="anio" value ={$anio}>
            <label for="suceso">Ingrese el suceso acontecido en ese año:</label>
            <textarea name="suceso" cols="30" rows="10">{$suceso}</textarea>
            <button type='submit' class="myButton">Enviar</button>
        </form>
    {include file = 'footer.tpl'}
    </body>
</html>