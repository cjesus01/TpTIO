<html>
    {include file = 'header.tpl'}
    <body>
        <form class="form-modificar-suceso" method="post" action="Introduccion/ModificarHistoria/{$id}">
            <label class="label-anio" for="anio">Ingrese el año:</label>
            <input class="input-anio" type="text" name="anio" value ={$anio}>
            <label class="label-suceso" for="suceso">Ingrese el suceso acontecido en ese año:</label>
            <textarea class="input-suceso" name="suceso" cols="30" rows="10">{$suceso}</textarea>
            <button class="submit myButton" type='submit' class="myButton">Enviar</button>
        </form>
    {include file = 'footer.tpl'}
    </body>
</html>