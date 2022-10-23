{include file = 'header.tpl'}
<h1> Recursos Materiales y Humanos de la empresa </h1>

<div class="recursos-materiales">
   <h2> Recursos Materiales </h2>
   {foreach $recursos as $recurso}
    {if ($recurso->tipo_recursos == "Materiales")}
    <p>{$recurso->info_recursos}</p>
    {/if}
    {/foreach}
    <p></p>
    <h2> Recursos Humanos </h2>
    {foreach $recursos as $recurso}
      {if ($recurso->tipo_recursos == "Humanos")}
      <h3>{$recurso->titulo_recursos}</h3>
      <p>{$recurso->info_recursos}</p>
      {/if}
      {/foreach}
    {* <h3> Producimos glucosa, maltosa, fructosa, almidón de maíz, harina de maíz, 
    sémola y aceite de maíz en 5 unidades productivas dedicadas a la molienda de maíz. </h3>
    <p> Arcor tiene establecida en 39 plantas industriales en Latinoamérica.
     Se hayan 10 oficinas comerciales alrededor del mundo, logrando insertarse 
     en las principales economías regionales del mundo, ganando un prestigio el
      cual es difícil de obtener. </p>
    
    <p>
    En Agronegocios en Grupo Arcor, a mediados de 2015, se agregó (al fin de brindar nuevas y mejores soluciones)
    una nueva y moderna planta de molienda húmeda de maíz 
    en el Complejo Industrial Arroyito, que está dedicada a la elaboración de fructosa,
    principalmente orientada a la producción de bebidas gaseosas, aguas saborizadas y jugos,
    entre otros productos, la cual empezó a operar ese mismo año.
    </p>
    <p>
    Dentro de esta división existe el Programa Agro Sustentable el cual está orientado
    a asegurar la responsabilidad ambiental, social y económica de los insumos agropecuarios
    de Arcor. Sus principales insumos involucrados dentro del programa son azúcar, cereales(maíz y trigo),
     frutas y hortalizas, grasas y aceites (animales y vegetales), derivados del cacao y derivados lácteos.    
    </p>
    <p>
    El Ingenio cuenta con una central que genera energía a partir del bagazo (combustible renovable),
     que se obtiene como residuo durante el procesamiento de la caña de azúcar. La energía generada 
     permite el autoabastecimiento energético del Ingenio (durante la zafra y genera un excedente 
     destinado a abastecer la necesidad de la provincia de Tucumán).
    </p>
    <p>
    Todos los ingredientes y aditivos que se utilizan en los productos elaborados por el Grupo Arcor,
     son los permitidos y regulados por el Código Alimentario Argentino, algunos de estos son:
    Etanol 
    Jarabe de Fructosa
    Lecitina de Soja
    Sorbato de potasio
    </p>
    <p>
    (Es uno de los líderes argentinos en la producción de alcohol etílico de cereales
    y produce 1, 55 millones de TN de caña de azúcar molida anuales en su ingenio La
    Providencia, en Tucumán. A su vez, es uno de los principales productores argentinos de leche,
     con 50.000 litros diarios de leche producidos por día. Por otro lado, es un actor importante
      en el mercado de nutrición animal y petcare, comercializando más de 330.000 tn por año de 
      productos para nutrición animal (wet gluten feed, gluten meal, burlanda húmeda y Lex).)
    </p> *}
</div>
{* {include 'recursoshumanos.tpl'}; *}
