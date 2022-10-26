{include file = 'header.tpl'}
<body>
<h1 class="titulo_recursos"> Recursos Materiales y Humanos de la empresa </h1>
   <h2 class="subtitulo_recursos"> Recursos Materiales </h2>
<div class="recursos-materiales">
   {foreach $recursos as $recurso}
    {if ($recurso->tipo_recursos == "Materiales")}
    <p>{$recurso->info_recursos}</p>
    {/if}
    {/foreach}
    </div>
    <p></p>
    <h2 class="subtitulo_recursos"> Recursos Humanos </h2>
    <div class="recursos-humanos">
    <p class="cv">Te estamos buscando! ¿te gustaria formar parte de nuestro equipo?</p>
    <button class="myButton" type="button" id="botonmodal">Ingresa tu CV</button>
    {foreach $recursos as $recurso}
      {if ($recurso->tipo_recursos == "Humanos")}
      <h3>{$recurso->titulo_recursos}</h3>
      <p>{$recurso->info_recursos}</p>
      {/if}
      {/foreach}
      </div>
<div id ="modal" class="displaymodalnone">
    <div class="modal">
        <div class="modal-contenido">
            <span class="close">&times;</span>
            <form action="Recursos/solicitud" method="post">
                <label for="name">Nombre</label>
                <input type="name" name="name"></input>
                <label for="e-mail">E-mail</label>
                <input type="e-mail" name="email"></input>
                <label for="dni">DNI</label>
                <input type="number" name="dni"></input>
                <label for="curriculum">Ingresa tu Curriculum *formato PDF*</label>
                <input type="file" accept=".pdf" name="curriculum"></input>
                <button type="submit"> Enviar </button>
            </form>
        </div> 
    </div>
</div>
<script src="js/CurriculumModal.js"></script>
{include file = 'footer.tpl'}
</body>
</html>
