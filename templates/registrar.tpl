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
{include file = 'header.tpl'}
<h1>Login</h1>
<form action="registrar" method="post">
<label for="login_mail">e-mail</label>
<input type="email" name="mail" id="login_mail" required autocomplete="email">
<label for="login_contraseña">contraseña</label>
<input type="password" name="password" id="login_contraseña" required minlength="8" autocomplete="new-password">
<label for="mostrar_contraseña">Mostrar Contraseña</label>
<input type="checkbox" id="mostrar_contraseña">
<input type="submit" value="Registrar">
</form>
{include file = 'footer.tpl'}
</body>

</html>
