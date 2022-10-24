
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$title}</title>
    <base href = "{$BASE_URL}">
    <link rel="stylesheet" href="styles/modal.css">
</head>
<body>
    {include file = 'header.tpl'}
<div class="recursos-humanos">
    <h2> Recursos Humanos </h2>
    <h3>
        Te estamos buscando! <button type="button" id="botonmodal" href="">Ingresá tu curriculum</button>
    </h3>
    <p>
        En Arcor estmos en una constante busca de nuevo talento para ampliar nuestro equipo, es por eso que tinemos varias propuestas dependiendo de las necesidades y objetivos que busca la persona que le interesa formar parte del equipo, entre ellos se destacan:
    </p>
    <h4>
        Ofertas laborales en el exterior 
    </h4>
    <p>
        Las ofertas de empleo que brinda están dirigidas a diversos perfiles y ofrecen la posibilidad de trabajar en las distintas plantas industriales de Latinoamérica y en las filiales y oficinas comerciales que la compañía tiene en América, Europa y Asia. 
    </p>
    <h4>
        Búsquedas laborales en Argentina   
    </h4>
    <p>
        Las ofertas de empleo que brinda están dirigidas a diversos perfiles, ofrecen la posibilidad de trabajar en distintas provincias de nuestro país y conocer en profundidad la particularidad de cada uno de sus negocios. 
    </p>
    <h4>
        Programa de Jóvenes Emprendedores.
    </h4>
    <p>
        Tiene el fin de incorporar jóvenes con potencial de liderazgo, interesados en desarrollar una mirada sustentable del negocio y que estén dispuestos a trasladarse dentro o fuera del país.

        (El programa busca incorporar estudiantes que se encuentren cursando los últimos años de las carreras de Ingeniería, Logística, Contador Público, Sistemas, Administración de Empresas, Marketing, Comercialización, Recursos Humanos y otras carreras dentro del ámbito de las Ciencias Sociales,con el objetivo de brindarles la posibilidad de vincular la esfera vocacional a la laboral, al realizar una primera experiencia en el mundo del trabajo.)        
    </p>
    <h3>Testimonios:</h3>
    <h4>YEN PAUL WEE NÚÑEZ, Gerente de Ventas Distribuidores, Chile.</h4>
    <p>
        Yen Paul y su familia vivieron cuatro años en Panamá, ya que su anterior posición era Gerente de Marketing para Centroamérica y Caribe: “Tuve la posibilidad de trabajar en varios países y conocer distintas culturas, lo cual genera una experiencia muy enriquecedora, tanto en lo personal como en lo profesional”. Ingresó en Arcor en 1997 como Jefe de Trade Marketing del canal de distribución. En su regreso a Chile le tocó asumir nuevos desafíos en una de las áreas que más le gusta por la diversidad de actividades que implica y por su cercanía con los clientes.
    </p>
</div>
<div id ="modal" class="displaymodalnone">
    <div class="modal">
        <div class="modal-contenido">
            <span class="close">&times;</span>
            <form>
                <label for="name">Nombre</label>
                <input type="name" name="name"></input>
                <label for="e-mail">E-mail</label>
                <input type="e-mail" name="email"></input>
                <label for="dni">DNI</label>
                <input type="number" name="dni"></input>
                <label for="curriculum">Ingresa tu Curriculum *formato PDF*</label>
                <input type="file" accept=".pdf" name="curriculum"></input>
                <button type="button"> Enviar </button>
            </form>
        </div> 
    </div>
</div>
<script src="js/CurriculumModal.js"></script>
{include file = 'footer.tpl'}
</body>