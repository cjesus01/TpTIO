<body>
{include file = 'header.tpl'}
<h1>Login</h1>
<form action="validar_usuario" method="post">
<label for="login_mail">e-mail</label>
<input type="email" name="mail" id="login_mail" required autocomplete="email">
<label for="login_contraseña">contraseña</label>
<input type="password" name="password" id="login_contraseña" required minlength="8" autocomplete="current-password">
<label for="mostrar_contraseña">Mostrar Contraseña</label>
<input type="checkbox" id="mostrar_contraseña">
<input type="submit" value="Login">
</form>
{include file = 'footer.tpl'}
</body>