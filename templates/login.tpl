<body>
{include file = 'header.tpl'}
<h1>Login</h1>
<form class="form-auth" action="validar_usuario" method="post">
<label class="label-mail" for="login_mail">e-mail</label>
<input class="input-mail" type="email" name="mail" id="login_mail" required autocomplete="email">
<label class="label-password" for="login_contraseña">contraseña</label>
<input class="input-password" type="password" name="password" id="login_contraseña" required minlength="8" autocomplete="current-password">
<label class="label-mostrar" for="mostrar_contraseña">Mostrar Contraseña</label>
<input class="input-mostrar" type="checkbox" id="mostrar_contraseña">
<input class="submit myButton" type="submit" value="Login">
</form>
{include file = 'footer.tpl'}
</body>