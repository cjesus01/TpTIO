{include file = 'header.tpl'}
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$title}</title>
    <base href="{$BASE_URL}">
</head>

<body>
<h1>Login</h1>
<form class="form-auth" action="registrar" method="post">
<label class="label-mail" for="login_mail">e-mail</label>
<input class="input-mail" type="email" name="mail" id="login_mail" required autocomplete="email">
<label class="label-password" for="login_contraseña">contraseña</label>
<input class="input-password" type="password" name="password" id="login_contraseña" required minlength="8" autocomplete="new-password">
<label class="label-mostrar" for="mostrar_contraseña">Mostrar Contraseña</label>
<input class="input-mostrar" type="checkbox" id="mostrar_contraseña">
<input class="submit myButton" type="submit" value="Registrar">
</form>
{include file = 'footer.tpl'}
</body>

</html>
